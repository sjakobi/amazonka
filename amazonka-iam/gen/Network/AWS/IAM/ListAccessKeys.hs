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
-- Module      : Network.AWS.IAM.ListAccessKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the access key IDs associated with the specified IAM user. If there is none, the operation returns an empty list.
--
--
-- Although each user is limited to a small number of keys, you can still paginate the results using the @MaxItems@ and @Marker@ parameters.
--
-- If the @UserName@ field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListAccessKeys
  ( -- * Creating a Request
    listAccessKeys,
    ListAccessKeys,

    -- * Request Lenses
    lakUserName,
    lakMaxItems,
    lakMarker,

    -- * Destructuring the Response
    listAccessKeysResponse,
    ListAccessKeysResponse,

    -- * Response Lenses
    lakrrsIsTruncated,
    lakrrsMarker,
    lakrrsResponseStatus,
    lakrrsAccessKeyMetadata,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAccessKeys' smart constructor.
data ListAccessKeys = ListAccessKeys'
  { _lakUserName ::
      !(Maybe Text),
    _lakMaxItems :: !(Maybe Nat),
    _lakMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAccessKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lakUserName' - The name of the user. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'lakMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lakMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listAccessKeys ::
  ListAccessKeys
listAccessKeys =
  ListAccessKeys'
    { _lakUserName = Nothing,
      _lakMaxItems = Nothing,
      _lakMarker = Nothing
    }

-- | The name of the user. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lakUserName :: Lens' ListAccessKeys (Maybe Text)
lakUserName = lens _lakUserName (\s a -> s {_lakUserName = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lakMaxItems :: Lens' ListAccessKeys (Maybe Natural)
lakMaxItems = lens _lakMaxItems (\s a -> s {_lakMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lakMarker :: Lens' ListAccessKeys (Maybe Text)
lakMarker = lens _lakMarker (\s a -> s {_lakMarker = a})

instance AWSPager ListAccessKeys where
  page rq rs
    | stop (rs ^. lakrrsIsTruncated) = Nothing
    | isNothing (rs ^. lakrrsMarker) = Nothing
    | otherwise =
      Just $ rq & lakMarker .~ rs ^. lakrrsMarker

instance AWSRequest ListAccessKeys where
  type Rs ListAccessKeys = ListAccessKeysResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListAccessKeysResult"
      ( \s h x ->
          ListAccessKeysResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "AccessKeyMetadata" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListAccessKeys

instance NFData ListAccessKeys

instance ToHeaders ListAccessKeys where
  toHeaders = const mempty

instance ToPath ListAccessKeys where
  toPath = const "/"

instance ToQuery ListAccessKeys where
  toQuery ListAccessKeys' {..} =
    mconcat
      [ "Action" =: ("ListAccessKeys" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "UserName" =: _lakUserName,
        "MaxItems" =: _lakMaxItems,
        "Marker" =: _lakMarker
      ]

-- | Contains the response to a successful 'ListAccessKeys' request.
--
--
--
-- /See:/ 'listAccessKeysResponse' smart constructor.
data ListAccessKeysResponse = ListAccessKeysResponse'
  { _lakrrsIsTruncated ::
      !(Maybe Bool),
    _lakrrsMarker ::
      !(Maybe Text),
    _lakrrsResponseStatus ::
      !Int,
    _lakrrsAccessKeyMetadata ::
      ![AccessKeyMetadata]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAccessKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lakrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lakrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lakrrsResponseStatus' - -- | The response status code.
--
-- * 'lakrrsAccessKeyMetadata' - A list of objects containing metadata about the access keys.
listAccessKeysResponse ::
  -- | 'lakrrsResponseStatus'
  Int ->
  ListAccessKeysResponse
listAccessKeysResponse pResponseStatus_ =
  ListAccessKeysResponse'
    { _lakrrsIsTruncated =
        Nothing,
      _lakrrsMarker = Nothing,
      _lakrrsResponseStatus = pResponseStatus_,
      _lakrrsAccessKeyMetadata = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lakrrsIsTruncated :: Lens' ListAccessKeysResponse (Maybe Bool)
lakrrsIsTruncated = lens _lakrrsIsTruncated (\s a -> s {_lakrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lakrrsMarker :: Lens' ListAccessKeysResponse (Maybe Text)
lakrrsMarker = lens _lakrrsMarker (\s a -> s {_lakrrsMarker = a})

-- | -- | The response status code.
lakrrsResponseStatus :: Lens' ListAccessKeysResponse Int
lakrrsResponseStatus = lens _lakrrsResponseStatus (\s a -> s {_lakrrsResponseStatus = a})

-- | A list of objects containing metadata about the access keys.
lakrrsAccessKeyMetadata :: Lens' ListAccessKeysResponse [AccessKeyMetadata]
lakrrsAccessKeyMetadata = lens _lakrrsAccessKeyMetadata (\s a -> s {_lakrrsAccessKeyMetadata = a}) . _Coerce

instance NFData ListAccessKeysResponse
