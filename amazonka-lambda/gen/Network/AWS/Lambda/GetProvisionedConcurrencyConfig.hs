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
-- Module      : Network.AWS.Lambda.GetProvisionedConcurrencyConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the provisioned concurrency configuration for a function's alias or version.
module Network.AWS.Lambda.GetProvisionedConcurrencyConfig
  ( -- * Creating a Request
    getProvisionedConcurrencyConfig,
    GetProvisionedConcurrencyConfig,

    -- * Request Lenses
    gpccFunctionName,
    gpccQualifier,

    -- * Destructuring the Response
    getProvisionedConcurrencyConfigResponse,
    GetProvisionedConcurrencyConfigResponse,

    -- * Response Lenses
    gpccrrsStatus,
    gpccrrsAvailableProvisionedConcurrentExecutions,
    gpccrrsRequestedProvisionedConcurrentExecutions,
    gpccrrsAllocatedProvisionedConcurrentExecutions,
    gpccrrsLastModified,
    gpccrrsStatusReason,
    gpccrrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getProvisionedConcurrencyConfig' smart constructor.
data GetProvisionedConcurrencyConfig = GetProvisionedConcurrencyConfig'
  { _gpccFunctionName ::
      !Text,
    _gpccQualifier ::
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

-- | Creates a value of 'GetProvisionedConcurrencyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpccFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
--
-- * 'gpccQualifier' - The version number or alias name.
getProvisionedConcurrencyConfig ::
  -- | 'gpccFunctionName'
  Text ->
  -- | 'gpccQualifier'
  Text ->
  GetProvisionedConcurrencyConfig
getProvisionedConcurrencyConfig
  pFunctionName_
  pQualifier_ =
    GetProvisionedConcurrencyConfig'
      { _gpccFunctionName =
          pFunctionName_,
        _gpccQualifier = pQualifier_
      }

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
gpccFunctionName :: Lens' GetProvisionedConcurrencyConfig Text
gpccFunctionName = lens _gpccFunctionName (\s a -> s {_gpccFunctionName = a})

-- | The version number or alias name.
gpccQualifier :: Lens' GetProvisionedConcurrencyConfig Text
gpccQualifier = lens _gpccQualifier (\s a -> s {_gpccQualifier = a})

instance AWSRequest GetProvisionedConcurrencyConfig where
  type
    Rs GetProvisionedConcurrencyConfig =
      GetProvisionedConcurrencyConfigResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          GetProvisionedConcurrencyConfigResponse'
            <$> (x .?> "Status")
            <*> (x .?> "AvailableProvisionedConcurrentExecutions")
            <*> (x .?> "RequestedProvisionedConcurrentExecutions")
            <*> (x .?> "AllocatedProvisionedConcurrentExecutions")
            <*> (x .?> "LastModified")
            <*> (x .?> "StatusReason")
            <*> (pure (fromEnum s))
      )

instance Hashable GetProvisionedConcurrencyConfig

instance NFData GetProvisionedConcurrencyConfig

instance ToHeaders GetProvisionedConcurrencyConfig where
  toHeaders = const mempty

instance ToPath GetProvisionedConcurrencyConfig where
  toPath GetProvisionedConcurrencyConfig' {..} =
    mconcat
      [ "/2019-09-30/functions/",
        toBS _gpccFunctionName,
        "/provisioned-concurrency"
      ]

instance ToQuery GetProvisionedConcurrencyConfig where
  toQuery GetProvisionedConcurrencyConfig' {..} =
    mconcat ["Qualifier" =: _gpccQualifier]

-- | /See:/ 'getProvisionedConcurrencyConfigResponse' smart constructor.
data GetProvisionedConcurrencyConfigResponse = GetProvisionedConcurrencyConfigResponse'
  { _gpccrrsStatus ::
      !( Maybe
           ProvisionedConcurrencyStatusEnum
       ),
    _gpccrrsAvailableProvisionedConcurrentExecutions ::
      !( Maybe
           Nat
       ),
    _gpccrrsRequestedProvisionedConcurrentExecutions ::
      !( Maybe
           Nat
       ),
    _gpccrrsAllocatedProvisionedConcurrentExecutions ::
      !( Maybe
           Nat
       ),
    _gpccrrsLastModified ::
      !( Maybe
           Text
       ),
    _gpccrrsStatusReason ::
      !( Maybe
           Text
       ),
    _gpccrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetProvisionedConcurrencyConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpccrrsStatus' - The status of the allocation process.
--
-- * 'gpccrrsAvailableProvisionedConcurrentExecutions' - The amount of provisioned concurrency available.
--
-- * 'gpccrrsRequestedProvisionedConcurrentExecutions' - The amount of provisioned concurrency requested.
--
-- * 'gpccrrsAllocatedProvisionedConcurrentExecutions' - The amount of provisioned concurrency allocated.
--
-- * 'gpccrrsLastModified' - The date and time that a user last updated the configuration, in <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601 format> .
--
-- * 'gpccrrsStatusReason' - For failed allocations, the reason that provisioned concurrency could not be allocated.
--
-- * 'gpccrrsResponseStatus' - -- | The response status code.
getProvisionedConcurrencyConfigResponse ::
  -- | 'gpccrrsResponseStatus'
  Int ->
  GetProvisionedConcurrencyConfigResponse
getProvisionedConcurrencyConfigResponse
  pResponseStatus_ =
    GetProvisionedConcurrencyConfigResponse'
      { _gpccrrsStatus =
          Nothing,
        _gpccrrsAvailableProvisionedConcurrentExecutions =
          Nothing,
        _gpccrrsRequestedProvisionedConcurrentExecutions =
          Nothing,
        _gpccrrsAllocatedProvisionedConcurrentExecutions =
          Nothing,
        _gpccrrsLastModified = Nothing,
        _gpccrrsStatusReason = Nothing,
        _gpccrrsResponseStatus =
          pResponseStatus_
      }

-- | The status of the allocation process.
gpccrrsStatus :: Lens' GetProvisionedConcurrencyConfigResponse (Maybe ProvisionedConcurrencyStatusEnum)
gpccrrsStatus = lens _gpccrrsStatus (\s a -> s {_gpccrrsStatus = a})

-- | The amount of provisioned concurrency available.
gpccrrsAvailableProvisionedConcurrentExecutions :: Lens' GetProvisionedConcurrencyConfigResponse (Maybe Natural)
gpccrrsAvailableProvisionedConcurrentExecutions = lens _gpccrrsAvailableProvisionedConcurrentExecutions (\s a -> s {_gpccrrsAvailableProvisionedConcurrentExecutions = a}) . mapping _Nat

-- | The amount of provisioned concurrency requested.
gpccrrsRequestedProvisionedConcurrentExecutions :: Lens' GetProvisionedConcurrencyConfigResponse (Maybe Natural)
gpccrrsRequestedProvisionedConcurrentExecutions = lens _gpccrrsRequestedProvisionedConcurrentExecutions (\s a -> s {_gpccrrsRequestedProvisionedConcurrentExecutions = a}) . mapping _Nat

-- | The amount of provisioned concurrency allocated.
gpccrrsAllocatedProvisionedConcurrentExecutions :: Lens' GetProvisionedConcurrencyConfigResponse (Maybe Natural)
gpccrrsAllocatedProvisionedConcurrentExecutions = lens _gpccrrsAllocatedProvisionedConcurrentExecutions (\s a -> s {_gpccrrsAllocatedProvisionedConcurrentExecutions = a}) . mapping _Nat

-- | The date and time that a user last updated the configuration, in <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601 format> .
gpccrrsLastModified :: Lens' GetProvisionedConcurrencyConfigResponse (Maybe Text)
gpccrrsLastModified = lens _gpccrrsLastModified (\s a -> s {_gpccrrsLastModified = a})

-- | For failed allocations, the reason that provisioned concurrency could not be allocated.
gpccrrsStatusReason :: Lens' GetProvisionedConcurrencyConfigResponse (Maybe Text)
gpccrrsStatusReason = lens _gpccrrsStatusReason (\s a -> s {_gpccrrsStatusReason = a})

-- | -- | The response status code.
gpccrrsResponseStatus :: Lens' GetProvisionedConcurrencyConfigResponse Int
gpccrrsResponseStatus = lens _gpccrrsResponseStatus (\s a -> s {_gpccrrsResponseStatus = a})

instance
  NFData
    GetProvisionedConcurrencyConfigResponse
