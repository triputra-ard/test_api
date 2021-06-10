<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
   public function login(Request $req){
     $validator = Validator::make($req->all(),[
        'email' => 'required|string|email',
        'password' => 'required|string|min:6',
      ]);
      if ($validator->fails()) {
        return response()->json([
          'errors' => $validator->errors(),
        ],RESPONSE::HTTP_UNPROCESSABLE_ENTITY);
      }else {
        $user = $req->only('email','password');
        if (!Auth::attempt($user)) {
          return response()->json([
            'errors' => [
              'message' => 'Cannot login with this identity, proccess aborted'
            ],
          ],RESPONSE::HTTP_UNPROCESSABLE_ENTITY);
        }else {
          $token = Auth::user()->createToken('access_token')->accessToken;

          return response()->json([
            'message' => 'success',
            'data' => Auth::user(),
            'meta' => [
              'token' => $token,
            ],
          ],RESPONSE::HTTP_CREATED);
        }
      }
   }

   public function data(){
     $data = DB::table('users')->get();
     return $data->toJson();
   }

   public function logout(){
     Auth::user()->token()->revoke();
     return response()->json([
       'message' => 'logout success',
     ],Response::HTTP_OK);
   }
}
