## 参考地址
* http://www.dahouduan.com/2017/11/21/oauth2-php/

## oauth2 授权:
* 准备:
* 流程:
    * 1. (客户端)登录页面 http://www.oauth2-client.test/index.php?
        * 点击使用xx登录(服务端): http://www.oauth2-server.test/authorize.php?response_type=code&client_id=testclient&state=xyz&redirect_uri=http://www.oauth2-client.test/index.php
    * 2. 如果用户没登陆过, 跳转到(服务端)登陆页面: http://www.oauth2-server.test/login.php
    * 3. 用户输入 "用户名" "密码" 去数据库验证, 验证没问题: 
        * 跳转 http://www.oauth2-server.test/authorize.php?response_type=code&client_id=testclient&state=xyz&redirect_uri=http://www.oauth2-client.test/index.php
        * 是否授权页面
    * 4. 用户同意授权跳转回(客户端)登录页面, 并携带: http://www.oauth2-client.test/index.php?code=0566a9484631a1ed324b735db92164709f0ebd1d&state=xyz
        * TODO: code 如何生成? 如何使用?
        * (客户端)使用授权码 code 去 http://www.oauth2-server.test/token.php 换取 accesstoken 和 refresh_token:
            * TODO: 这里要向 http://www.oauth2-server.test/token.php 提交比较多的参数
            ```php
            array (size=5)
              'access_token' => string '5d400420998ae507d6e9d6fc4894fc680dffc148' (length=40)
              'expires_in' => int 3600
              'token_type' => string 'Bearer' (length=6)
              'scope' => null
              'refresh_token' => string 'd858de32d104609537e8f42c126a376dbb8bbe69' (length=40)
            ```
    * 5. 客户端使用 access_token 去获取服务端的数据, 例如 刚刚授权的用户信息
