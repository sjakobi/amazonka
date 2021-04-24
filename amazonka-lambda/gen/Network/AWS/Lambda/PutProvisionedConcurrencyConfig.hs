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
-- Module      : Network.AWS.Lambda.PutProvisionedConcurrencyConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a provisioned concurrency configuration to a function's alias or version.
module Network.AWS.Lambda.PutProvisionedConcurrencyConfig
  ( -- * Creating a Request
    putProvisionedConcurrencyConfig,
    PutProvisionedConcurrencyConfig,

    -- * Request Lenses
    ppccFunctionName,
    ppccQualifier,
    ppccProvisionedConcurrentExecutions,

    -- * Destructuring the Response
    putProvisionedConcurrencyConfigResponse,
    PutProvisionedConcurrencyConfigResponse,

    -- * Response Lenses
    ppccrrsStatus,
    ppccrrsAvailableProvisionedConcurrentExecutions,
    ppccrrsRequestedProvisionedConcurrentExecutions,
    ppccrrsAllocatedProvisionedConcurrentExecutions,
    ppccrrsLastModified,
    ppccrrsStatusReason,
    ppccrrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putProvisionedConcurrencyConfig' smart constructor.
data PutProvisionedConcurrencyConfig = PutProvisionedConcurrencyConfig'
  { _ppccFunctionName ::
      !Text,
    _ppccQualifier ::
      !Text,
    _ppccProvisionedConcurrentExecutions ::
      !Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutProvisionedConcurrencyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppccFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
--
-- * 'ppccQualifier' - The version number or alias name.
--
-- * 'ppccProvisionedConcurrentExecutions' - The amount of provisioned concurrency to allocate for the version or alias.
putProvisionedConcurrencyConfig ::
  -- | 'ppccFunctionName'
  Text ->
  -- | 'ppccQualifier'
  Text ->
  -- | 'ppccProvisionedConcurrentExecutions'
  Natural ->
  PutProvisionedConcurrencyConfig
putProvisionedConcurrencyConfig
  pFunctionName_
  pQualifier_
  pProvisionedConcurrentExecutions_ =
    PutProvisionedConcurrencyConfig'
      { _ppccFunctionName =
          pFunctionName_,
        _ppccQualifier = pQualifier_,
        _ppccProvisionedConcurrentExecutions =
          _Nat # pProvisionedConcurrentExecutions_
      }

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
ppccFunctionName :: Lens' PutProvisionedConcurrencyConfig Text
ppccFunctionName = lens _ppccFunctionName (\s a -> s {_ppccFunctionName = a})

-- | The version number or alias name.
ppccQualifier :: Lens' PutProvisionedConcurrencyConfig Text
ppccQualifier = lens _ppccQualifier (\s a -> s {_ppccQualifier = a})

-- | The amount of provisioned concurrency to allocate for the version or alias.
ppccProvisionedConcurrentExecutions :: Lens' PutProvisionedConcurrencyConfig Natural
ppccProvisionedConcurrentExecutions = lens _ppccProvisionedConcurrentExecutions (\s a -> s {_ppccProvisionedConcurrentExecutions = a}) . _Nat

instance AWSRequest PutProvisionedConcurrencyConfig where
  type
    Rs PutProvisionedConcurrencyConfig =
      PutProvisionedConcurrencyConfigResponse
  request = putJSON lambda
  response =
    receiveJSON
      ( \s h x ->
          PutProvisionedConcurrencyConfigResponse'
            <$> (x .?> "Status")
            <*> (x .?> "AvailableProvisionedConcurrentExecutions")
            <*> (x .?> "RequestedProvisionedConcurrentExecutions")
            <*> (x .?> "AllocatedProvisionedConcurrentExecutions")
            <*> (x .?> "LastModified")
            <*> (x .?> "StatusReason")
            <*> (pure (fromEnum s))
      )

instance Hashable PutProvisionedConcurrencyConfig

instance NFData PutProvisionedConcurrencyConfig

instance ToHeaders PutProvisionedConcurrencyConfig where
  toHeaders = const mempty

instance ToJSON PutProvisionedConcurrencyConfig where
  toJSON PutProvisionedConcurrencyConfig' {..} =
    object
      ( catMaybes
          [ Just
              ( "ProvisionedConcurrentExecutions"
                  .= _ppccProvisionedConcurrentExecutions
              )
          ]
      )

instance ToPath PutProvisionedConcurrencyConfig where
  toPath PutProvisionedConcurrencyConfig' {..} =
    mconcat
      [ "/2019-09-30/functions/",
        toBS _ppccFunctionName,
        "/provisioned-concurrency"
      ]

instance ToQuery PutProvisionedConcurrencyConfig where
  toQuery PutProvisionedConcurrencyConfig' {..} =
    mconcat ["Qualifier" =: _ppccQualifier]

-- | /See:/ 'putProvisionedConcurrencyConfigResponse' smart constructor.
data PutProvisionedConcurrencyConfigResponse = PutProvisionedConcurrencyConfigResponse'
  { _ppccrrsStatus ::
      !( Maybe
           ProvisionedConcurrencyStatusEnum
       ),
    _ppccrrsAvailableProvisionedConcurrentExecutions ::
      !( Maybe
           Nat
       ),
    _ppccrrsRequestedProvisionedConcurrentExecutions ::
      !( Maybe
           Nat
       ),
    _ppccrrsAllocatedProvisionedConcurrentExecutions ::
      !( Maybe
           Nat
       ),
    _ppccrrsLastModified ::
      !( Maybe
           Text
       ),
    _ppccrrsStatusReason ::
      !( Maybe
           Text
       ),
    _ppccrrsResponseStatus ::
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

-- | Creates a value of 'PutProvisionedConcurrencyConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppccrrsStatus' - The status of the allocation process.
--
-- * 'ppccrrsAvailableProvisionedConcurrentExecutions' - The amount of provisioned concurrency available.
--
-- * 'ppccrrsRequestedProvisionedConcurrentExecutions' - The amount of provisioned concurrency requested.
--
-- * 'ppccrrsAllocatedProvisionedConcurrentExecutions' - The amount of provisioned concurrency allocated.
--
-- * 'ppccrrsLastModified' - The date and time that a user last updated the configuration, in <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601 format> .
--
-- * 'ppccrrsStatusReason' - For failed allocations, the reason that provisioned concurrency could not be allocated.
--
-- * 'ppccrrsResponseStatus' - -- | The response status code.
putProvisionedConcurrencyConfigResponse ::
  -- | 'ppccrrsResponseStatus'
  Int ->
  PutProvisionedConcurrencyConfigResponse
putProvisionedConcurrencyConfigResponse
  pResponseStatus_ =
    PutProvisionedConcurrencyConfigResponse'
      { _ppccrrsStatus =
          Nothing,
        _ppccrrsAvailableProvisionedConcurrentExecutions =
          Nothing,
        _ppccrrsRequestedProvisionedConcurrentExecutions =
          Nothing,
        _ppccrrsAllocatedProvisionedConcurrentExecutions =
          Nothing,
        _ppccrrsLastModified = Nothing,
        _ppccrrsStatusReason = Nothing,
        _ppccrrsResponseStatus =
          pResponseStatus_
      }

-- | The status of the allocation process.
ppccrrsStatus :: Lens' PutProvisionedConcurrencyConfigResponse (Maybe ProvisionedConcurrencyStatusEnum)
ppccrrsStatus = lens _ppccrrsStatus (\s a -> s {_ppccrrsStatus = a})

-- | The amount of provisioned concurrency available.
ppccrrsAvailableProvisionedConcurrentExecutions :: Lens' PutProvisionedConcurrencyConfigResponse (Maybe Natural)
ppccrrsAvailableProvisionedConcurrentExecutions = lens _ppccrrsAvailableProvisionedConcurrentExecutions (\s a -> s {_ppccrrsAvailableProvisionedConcurrentExecutions = a}) . mapping _Nat

-- | The amount of provisioned concurrency requested.
ppccrrsRequestedProvisionedConcurrentExecutions :: Lens' PutProvisionedConcurrencyConfigResponse (Maybe Natural)
ppccrrsRequestedProvisionedConcurrentExecutions = lens _ppccrrsRequestedProvisionedConcurrentExecutions (\s a -> s {_ppccrrsRequestedProvisionedConcurrentExecutions = a}) . mapping _Nat

-- | The amount of provisioned concurrency allocated.
ppccrrsAllocatedProvisionedConcurrentExecutions :: Lens' PutProvisionedConcurrencyConfigResponse (Maybe Natural)
ppccrrsAllocatedProvisionedConcurrentExecutions = lens _ppccrrsAllocatedProvisionedConcurrentExecutions (\s a -> s {_ppccrrsAllocatedProvisionedConcurrentExecutions = a}) . mapping _Nat

-- | The date and time that a user last updated the configuration, in <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601 format> .
ppccrrsLastModified :: Lens' PutProvisionedConcurrencyConfigResponse (Maybe Text)
ppccrrsLastModified = lens _ppccrrsLastModified (\s a -> s {_ppccrrsLastModified = a})

-- | For failed allocations, the reason that provisioned concurrency could not be allocated.
ppccrrsStatusReason :: Lens' PutProvisionedConcurrencyConfigResponse (Maybe Text)
ppccrrsStatusReason = lens _ppccrrsStatusReason (\s a -> s {_ppccrrsStatusReason = a})

-- | -- | The response status code.
ppccrrsResponseStatus :: Lens' PutProvisionedConcurrencyConfigResponse Int
ppccrrsResponseStatus = lens _ppccrrsResponseStatus (\s a -> s {_ppccrrsResponseStatus = a})

instance
  NFData
    PutProvisionedConcurrencyConfigResponse
