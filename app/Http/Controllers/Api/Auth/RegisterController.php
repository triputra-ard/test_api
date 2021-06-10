<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class RegisterController extends Controller
{
    //
    public function __invoke(Request $req){
     $validator = Validator::make($req->all(),[
        'name' => 'required|string|max:255',
        'email' => 'required|string|email|unique:users',
        'password' => 'required|string|min:6',
      ]);
      if ($validator->fails()) {
        return response()->json([
          'errors' => $validator->errors(),
        ],RESPONSE::HTTP_UNPROCESSABLE_ENTITY);
      }else {
        $user = User::create([
          'name' => $req->name,
          'email' => $req->email,
          'password' => Hash::make($req->password),
        ]);
        $credentials = $req->only('email','password');
        if (!Auth::attempt($credentials)) {
          return response()->json([
            'errors' => [
            'message' => 'Authentication Invalid' 
            ],
          ],RESPONSE::HTTP_UNPROCESSABLE_ENTITY);
        }
        $token = Auth::user()->createToken('access_token')->accessToken;

        return response()->json([
          'message' => 'success',
          'data' => $user,
          'meta' => [
            'token' => $token,
          ],
        ],RESPONSE::HTTP_CREATED);
      }

      // return response()->json([
      //   'message' => 'ok',
      //   'data' =>  $validator,
      //   'fails' =>  $validator->fails(),
      //   'error' => $validator->errors(),
      // ]);
    }
}
