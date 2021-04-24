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
-- Module      : Network.AWS.KMS.DescribeCustomKeyStores
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key stores> in the account and region.
--
--
-- This operation is part of the <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html Custom Key Store feature> feature in AWS KMS, which combines the convenience and extensive integration of AWS KMS with the isolation and control of a single-tenant key store.
--
-- By default, this operation returns information about all custom key stores in the account and region. To get only information about a particular custom key store, use either the @CustomKeyStoreName@ or @CustomKeyStoreId@ parameter (but not both).
--
-- To determine whether the custom key store is connected to its AWS CloudHSM cluster, use the @ConnectionState@ element in the response. If an attempt to connect the custom key store failed, the @ConnectionState@ value is @FAILED@ and the @ConnectionErrorCode@ element in the response indicates the cause of the failure. For help interpreting the @ConnectionErrorCode@ , see 'CustomKeyStoresListEntry' .
--
-- Custom key stores have a @DISCONNECTED@ connection state if the key store has never been connected or you use the 'DisconnectCustomKeyStore' operation to disconnect it. If your custom key store state is @CONNECTED@ but you are having trouble using it, make sure that its associated AWS CloudHSM cluster is active and contains the minimum number of HSMs required for the operation, if any.
--
-- For help repairing your custom key store, see the <https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html Troubleshooting Custom Key Stores> topic in the /AWS Key Management Service Developer Guide/ .
--
-- __Cross-account use__ : No. You cannot perform this operation on a custom key store in a different AWS account.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:DescribeCustomKeyStores> (IAM policy)
--
-- __Related operations:__
--
--     * 'ConnectCustomKeyStore'
--
--     * 'CreateCustomKeyStore'
--
--     * 'DeleteCustomKeyStore'
--
--     * 'DisconnectCustomKeyStore'
--
--     * 'UpdateCustomKeyStore'
module Network.AWS.KMS.DescribeCustomKeyStores
  ( -- * Creating a Request
    describeCustomKeyStores,
    DescribeCustomKeyStores,

    -- * Request Lenses
    dckssCustomKeyStoreName,
    dckssCustomKeyStoreId,
    dckssLimit,
    dckssMarker,

    -- * Destructuring the Response
    describeCustomKeyStoresResponse,
    DescribeCustomKeyStoresResponse,

    -- * Response Lenses
    drsCustomKeyStores,
    drsNextMarker,
    drsTruncated,
    drsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCustomKeyStores' smart constructor.
data DescribeCustomKeyStores = DescribeCustomKeyStores'
  { _dckssCustomKeyStoreName ::
      !(Maybe Text),
    _dckssCustomKeyStoreId ::
      !(Maybe Text),
    _dckssLimit ::
      !(Maybe Nat),
    _dckssMarker ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCustomKeyStores' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dckssCustomKeyStoreName' - Gets only information about the specified custom key store. Enter the friendly name of the custom key store. By default, this operation gets information about all custom key stores in the account and region. To limit the output to a particular custom key store, you can use either the @CustomKeyStoreId@ or @CustomKeyStoreName@ parameter, but not both.
--
-- * 'dckssCustomKeyStoreId' - Gets only information about the specified custom key store. Enter the key store ID. By default, this operation gets information about all custom key stores in the account and region. To limit the output to a particular custom key store, you can use either the @CustomKeyStoreId@ or @CustomKeyStoreName@ parameter, but not both.
--
-- * 'dckssLimit' - Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.
--
-- * 'dckssMarker' - Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
describeCustomKeyStores ::
  DescribeCustomKeyStores
describeCustomKeyStores =
  DescribeCustomKeyStores'
    { _dckssCustomKeyStoreName =
        Nothing,
      _dckssCustomKeyStoreId = Nothing,
      _dckssLimit = Nothing,
      _dckssMarker = Nothing
    }

-- | Gets only information about the specified custom key store. Enter the friendly name of the custom key store. By default, this operation gets information about all custom key stores in the account and region. To limit the output to a particular custom key store, you can use either the @CustomKeyStoreId@ or @CustomKeyStoreName@ parameter, but not both.
dckssCustomKeyStoreName :: Lens' DescribeCustomKeyStores (Maybe Text)
dckssCustomKeyStoreName = lens _dckssCustomKeyStoreName (\s a -> s {_dckssCustomKeyStoreName = a})

-- | Gets only information about the specified custom key store. Enter the key store ID. By default, this operation gets information about all custom key stores in the account and region. To limit the output to a particular custom key store, you can use either the @CustomKeyStoreId@ or @CustomKeyStoreName@ parameter, but not both.
dckssCustomKeyStoreId :: Lens' DescribeCustomKeyStores (Maybe Text)
dckssCustomKeyStoreId = lens _dckssCustomKeyStoreId (\s a -> s {_dckssCustomKeyStoreId = a})

-- | Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.
dckssLimit :: Lens' DescribeCustomKeyStores (Maybe Natural)
dckssLimit = lens _dckssLimit (\s a -> s {_dckssLimit = a}) . mapping _Nat

-- | Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
dckssMarker :: Lens' DescribeCustomKeyStores (Maybe Text)
dckssMarker = lens _dckssMarker (\s a -> s {_dckssMarker = a})

instance AWSRequest DescribeCustomKeyStores where
  type
    Rs DescribeCustomKeyStores =
      DescribeCustomKeyStoresResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          DescribeCustomKeyStoresResponse'
            <$> (x .?> "CustomKeyStores" .!@ mempty)
            <*> (x .?> "NextMarker")
            <*> (x .?> "Truncated")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCustomKeyStores

instance NFData DescribeCustomKeyStores

instance ToHeaders DescribeCustomKeyStores where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "TrentService.DescribeCustomKeyStores" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCustomKeyStores where
  toJSON DescribeCustomKeyStores' {..} =
    object
      ( catMaybes
          [ ("CustomKeyStoreName" .=)
              <$> _dckssCustomKeyStoreName,
            ("CustomKeyStoreId" .=) <$> _dckssCustomKeyStoreId,
            ("Limit" .=) <$> _dckssLimit,
            ("Marker" .=) <$> _dckssMarker
          ]
      )

instance ToPath DescribeCustomKeyStores where
  toPath = const "/"

instance ToQuery DescribeCustomKeyStores where
  toQuery = const mempty

-- | /See:/ 'describeCustomKeyStoresResponse' smart constructor.
data DescribeCustomKeyStoresResponse = DescribeCustomKeyStoresResponse'
  { _drsCustomKeyStores ::
      !( Maybe
           [CustomKeyStoresListEntry]
       ),
    _drsNextMarker ::
      !( Maybe
           Text
       ),
    _drsTruncated ::
      !( Maybe
           Bool
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeCustomKeyStoresResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsCustomKeyStores' - Contains metadata about each custom key store.
--
-- * 'drsNextMarker' - When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
--
-- * 'drsTruncated' - A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeCustomKeyStoresResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeCustomKeyStoresResponse
describeCustomKeyStoresResponse pResponseStatus_ =
  DescribeCustomKeyStoresResponse'
    { _drsCustomKeyStores =
        Nothing,
      _drsNextMarker = Nothing,
      _drsTruncated = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | Contains metadata about each custom key store.
drsCustomKeyStores :: Lens' DescribeCustomKeyStoresResponse [CustomKeyStoresListEntry]
drsCustomKeyStores = lens _drsCustomKeyStores (\s a -> s {_drsCustomKeyStores = a}) . _Default . _Coerce

-- | When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
drsNextMarker :: Lens' DescribeCustomKeyStoresResponse (Maybe Text)
drsNextMarker = lens _drsNextMarker (\s a -> s {_drsNextMarker = a})

-- | A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
drsTruncated :: Lens' DescribeCustomKeyStoresResponse (Maybe Bool)
drsTruncated = lens _drsTruncated (\s a -> s {_drsTruncated = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeCustomKeyStoresResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeCustomKeyStoresResponse
