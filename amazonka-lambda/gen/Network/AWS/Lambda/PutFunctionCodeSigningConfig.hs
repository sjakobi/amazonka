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
-- Module      : Network.AWS.Lambda.PutFunctionCodeSigningConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the code signing configuration for the function. Changes to the code signing configuration take effect the next time a user tries to deploy a code package to the function.
module Network.AWS.Lambda.PutFunctionCodeSigningConfig
  ( -- * Creating a Request
    putFunctionCodeSigningConfig,
    PutFunctionCodeSigningConfig,

    -- * Request Lenses
    pfcscCodeSigningConfigARN,
    pfcscFunctionName,

    -- * Destructuring the Response
    putFunctionCodeSigningConfigResponse,
    PutFunctionCodeSigningConfigResponse,

    -- * Response Lenses
    pfcscrrsResponseStatus,
    pfcscrrsCodeSigningConfigARN,
    pfcscrrsFunctionName,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putFunctionCodeSigningConfig' smart constructor.
data PutFunctionCodeSigningConfig = PutFunctionCodeSigningConfig'
  { _pfcscCodeSigningConfigARN ::
      !Text,
    _pfcscFunctionName ::
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

-- | Creates a value of 'PutFunctionCodeSigningConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfcscCodeSigningConfigARN' - The The Amazon Resource Name (ARN) of the code signing configuration.
--
-- * 'pfcscFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
putFunctionCodeSigningConfig ::
  -- | 'pfcscCodeSigningConfigARN'
  Text ->
  -- | 'pfcscFunctionName'
  Text ->
  PutFunctionCodeSigningConfig
putFunctionCodeSigningConfig
  pCodeSigningConfigARN_
  pFunctionName_ =
    PutFunctionCodeSigningConfig'
      { _pfcscCodeSigningConfigARN =
          pCodeSigningConfigARN_,
        _pfcscFunctionName = pFunctionName_
      }

-- | The The Amazon Resource Name (ARN) of the code signing configuration.
pfcscCodeSigningConfigARN :: Lens' PutFunctionCodeSigningConfig Text
pfcscCodeSigningConfigARN = lens _pfcscCodeSigningConfigARN (\s a -> s {_pfcscCodeSigningConfigARN = a})

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
pfcscFunctionName :: Lens' PutFunctionCodeSigningConfig Text
pfcscFunctionName = lens _pfcscFunctionName (\s a -> s {_pfcscFunctionName = a})

instance AWSRequest PutFunctionCodeSigningConfig where
  type
    Rs PutFunctionCodeSigningConfig =
      PutFunctionCodeSigningConfigResponse
  request = putJSON lambda
  response =
    receiveJSON
      ( \s h x ->
          PutFunctionCodeSigningConfigResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "CodeSigningConfigArn")
            <*> (x .:> "FunctionName")
      )

instance Hashable PutFunctionCodeSigningConfig

instance NFData PutFunctionCodeSigningConfig

instance ToHeaders PutFunctionCodeSigningConfig where
  toHeaders = const mempty

instance ToJSON PutFunctionCodeSigningConfig where
  toJSON PutFunctionCodeSigningConfig' {..} =
    object
      ( catMaybes
          [ Just
              ( "CodeSigningConfigArn"
                  .= _pfcscCodeSigningConfigARN
              )
          ]
      )

instance ToPath PutFunctionCodeSigningConfig where
  toPath PutFunctionCodeSigningConfig' {..} =
    mconcat
      [ "/2020-06-30/functions/",
        toBS _pfcscFunctionName,
        "/code-signing-config"
      ]

instance ToQuery PutFunctionCodeSigningConfig where
  toQuery = const mempty

-- | /See:/ 'putFunctionCodeSigningConfigResponse' smart constructor.
data PutFunctionCodeSigningConfigResponse = PutFunctionCodeSigningConfigResponse'
  { _pfcscrrsResponseStatus ::
      !Int,
    _pfcscrrsCodeSigningConfigARN ::
      !Text,
    _pfcscrrsFunctionName ::
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

-- | Creates a value of 'PutFunctionCodeSigningConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfcscrrsResponseStatus' - -- | The response status code.
--
-- * 'pfcscrrsCodeSigningConfigARN' - The The Amazon Resource Name (ARN) of the code signing configuration.
--
-- * 'pfcscrrsFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
putFunctionCodeSigningConfigResponse ::
  -- | 'pfcscrrsResponseStatus'
  Int ->
  -- | 'pfcscrrsCodeSigningConfigARN'
  Text ->
  -- | 'pfcscrrsFunctionName'
  Text ->
  PutFunctionCodeSigningConfigResponse
putFunctionCodeSigningConfigResponse
  pResponseStatus_
  pCodeSigningConfigARN_
  pFunctionName_ =
    PutFunctionCodeSigningConfigResponse'
      { _pfcscrrsResponseStatus =
          pResponseStatus_,
        _pfcscrrsCodeSigningConfigARN =
          pCodeSigningConfigARN_,
        _pfcscrrsFunctionName =
          pFunctionName_
      }

-- | -- | The response status code.
pfcscrrsResponseStatus :: Lens' PutFunctionCodeSigningConfigResponse Int
pfcscrrsResponseStatus = lens _pfcscrrsResponseStatus (\s a -> s {_pfcscrrsResponseStatus = a})

-- | The The Amazon Resource Name (ARN) of the code signing configuration.
pfcscrrsCodeSigningConfigARN :: Lens' PutFunctionCodeSigningConfigResponse Text
pfcscrrsCodeSigningConfigARN = lens _pfcscrrsCodeSigningConfigARN (\s a -> s {_pfcscrrsCodeSigningConfigARN = a})

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
pfcscrrsFunctionName :: Lens' PutFunctionCodeSigningConfigResponse Text
pfcscrrsFunctionName = lens _pfcscrrsFunctionName (\s a -> s {_pfcscrrsFunctionName = a})

instance NFData PutFunctionCodeSigningConfigResponse
