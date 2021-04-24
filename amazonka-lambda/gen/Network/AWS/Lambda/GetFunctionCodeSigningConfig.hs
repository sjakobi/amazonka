{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.GetFunctionCodeSigningConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the code signing configuration for the specified function.
module Network.AWS.Lambda.GetFunctionCodeSigningConfig
  ( -- * Creating a Request
    getFunctionCodeSigningConfig,
    GetFunctionCodeSigningConfig,

    -- * Request Lenses
    gfcscFunctionName,

    -- * Destructuring the Response
    getFunctionCodeSigningConfigResponse,
    GetFunctionCodeSigningConfigResponse,

    -- * Response Lenses
    gfcscrrsResponseStatus,
    gfcscrrsCodeSigningConfigARN,
    gfcscrrsFunctionName,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFunctionCodeSigningConfig' smart constructor.
newtype GetFunctionCodeSigningConfig = GetFunctionCodeSigningConfig'
  { _gfcscFunctionName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetFunctionCodeSigningConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfcscFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
getFunctionCodeSigningConfig ::
  -- | 'gfcscFunctionName'
  Text ->
  GetFunctionCodeSigningConfig
getFunctionCodeSigningConfig pFunctionName_ =
  GetFunctionCodeSigningConfig'
    { _gfcscFunctionName =
        pFunctionName_
    }

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
gfcscFunctionName :: Lens' GetFunctionCodeSigningConfig Text
gfcscFunctionName = lens _gfcscFunctionName (\s a -> s {_gfcscFunctionName = a})

instance AWSRequest GetFunctionCodeSigningConfig where
  type
    Rs GetFunctionCodeSigningConfig =
      GetFunctionCodeSigningConfigResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          GetFunctionCodeSigningConfigResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "CodeSigningConfigArn")
            <*> (x .:> "FunctionName")
      )

instance Hashable GetFunctionCodeSigningConfig

instance NFData GetFunctionCodeSigningConfig

instance ToHeaders GetFunctionCodeSigningConfig where
  toHeaders = const mempty

instance ToPath GetFunctionCodeSigningConfig where
  toPath GetFunctionCodeSigningConfig' {..} =
    mconcat
      [ "/2020-06-30/functions/",
        toBS _gfcscFunctionName,
        "/code-signing-config"
      ]

instance ToQuery GetFunctionCodeSigningConfig where
  toQuery = const mempty

-- | /See:/ 'getFunctionCodeSigningConfigResponse' smart constructor.
data GetFunctionCodeSigningConfigResponse = GetFunctionCodeSigningConfigResponse'
  { _gfcscrrsResponseStatus ::
      !Int,
    _gfcscrrsCodeSigningConfigARN ::
      !Text,
    _gfcscrrsFunctionName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetFunctionCodeSigningConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfcscrrsResponseStatus' - -- | The response status code.
--
-- * 'gfcscrrsCodeSigningConfigARN' - The The Amazon Resource Name (ARN) of the code signing configuration.
--
-- * 'gfcscrrsFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
getFunctionCodeSigningConfigResponse ::
  -- | 'gfcscrrsResponseStatus'
  Int ->
  -- | 'gfcscrrsCodeSigningConfigARN'
  Text ->
  -- | 'gfcscrrsFunctionName'
  Text ->
  GetFunctionCodeSigningConfigResponse
getFunctionCodeSigningConfigResponse
  pResponseStatus_
  pCodeSigningConfigARN_
  pFunctionName_ =
    GetFunctionCodeSigningConfigResponse'
      { _gfcscrrsResponseStatus =
          pResponseStatus_,
        _gfcscrrsCodeSigningConfigARN =
          pCodeSigningConfigARN_,
        _gfcscrrsFunctionName =
          pFunctionName_
      }

-- | -- | The response status code.
gfcscrrsResponseStatus :: Lens' GetFunctionCodeSigningConfigResponse Int
gfcscrrsResponseStatus = lens _gfcscrrsResponseStatus (\s a -> s {_gfcscrrsResponseStatus = a})

-- | The The Amazon Resource Name (ARN) of the code signing configuration.
gfcscrrsCodeSigningConfigARN :: Lens' GetFunctionCodeSigningConfigResponse Text
gfcscrrsCodeSigningConfigARN = lens _gfcscrrsCodeSigningConfigARN (\s a -> s {_gfcscrrsCodeSigningConfigARN = a})

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
gfcscrrsFunctionName :: Lens' GetFunctionCodeSigningConfigResponse Text
gfcscrrsFunctionName = lens _gfcscrrsFunctionName (\s a -> s {_gfcscrrsFunctionName = a})

instance NFData GetFunctionCodeSigningConfigResponse
