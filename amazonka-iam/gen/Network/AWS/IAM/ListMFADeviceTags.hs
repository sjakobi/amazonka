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
-- Module      : Network.AWS.IAM.ListMFADeviceTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified IAM virtual multi-factor authentication (MFA) device. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.ListMFADeviceTags
  ( -- * Creating a Request
    listMFADeviceTags,
    ListMFADeviceTags,

    -- * Request Lenses
    lmdtMaxItems,
    lmdtMarker,
    lmdtSerialNumber,

    -- * Destructuring the Response
    listMFADeviceTagsResponse,
    ListMFADeviceTagsResponse,

    -- * Response Lenses
    lmdtrrsIsTruncated,
    lmdtrrsMarker,
    lmdtrrsResponseStatus,
    lmdtrrsTags,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listMFADeviceTags' smart constructor.
data ListMFADeviceTags = ListMFADeviceTags'
  { _lmdtMaxItems ::
      !(Maybe Nat),
    _lmdtMarker :: !(Maybe Text),
    _lmdtSerialNumber :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMFADeviceTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmdtMaxItems' - (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lmdtMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lmdtSerialNumber' - The unique identifier for the IAM virtual MFA device whose tags you want to see. For virtual MFA devices, the serial number is the same as the ARN. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
listMFADeviceTags ::
  -- | 'lmdtSerialNumber'
  Text ->
  ListMFADeviceTags
listMFADeviceTags pSerialNumber_ =
  ListMFADeviceTags'
    { _lmdtMaxItems = Nothing,
      _lmdtMarker = Nothing,
      _lmdtSerialNumber = pSerialNumber_
    }

-- | (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lmdtMaxItems :: Lens' ListMFADeviceTags (Maybe Natural)
lmdtMaxItems = lens _lmdtMaxItems (\s a -> s {_lmdtMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lmdtMarker :: Lens' ListMFADeviceTags (Maybe Text)
lmdtMarker = lens _lmdtMarker (\s a -> s {_lmdtMarker = a})

-- | The unique identifier for the IAM virtual MFA device whose tags you want to see. For virtual MFA devices, the serial number is the same as the ARN. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
lmdtSerialNumber :: Lens' ListMFADeviceTags Text
lmdtSerialNumber = lens _lmdtSerialNumber (\s a -> s {_lmdtSerialNumber = a})

instance AWSRequest ListMFADeviceTags where
  type Rs ListMFADeviceTags = ListMFADeviceTagsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListMFADeviceTagsResult"
      ( \s h x ->
          ListMFADeviceTagsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@? "Tags" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable ListMFADeviceTags

instance NFData ListMFADeviceTags

instance ToHeaders ListMFADeviceTags where
  toHeaders = const mempty

instance ToPath ListMFADeviceTags where
  toPath = const "/"

instance ToQuery ListMFADeviceTags where
  toQuery ListMFADeviceTags' {..} =
    mconcat
      [ "Action" =: ("ListMFADeviceTags" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lmdtMaxItems,
        "Marker" =: _lmdtMarker,
        "SerialNumber" =: _lmdtSerialNumber
      ]

-- | /See:/ 'listMFADeviceTagsResponse' smart constructor.
data ListMFADeviceTagsResponse = ListMFADeviceTagsResponse'
  { _lmdtrrsIsTruncated ::
      !(Maybe Bool),
    _lmdtrrsMarker ::
      !(Maybe Text),
    _lmdtrrsResponseStatus ::
      !Int,
    _lmdtrrsTags ::
      ![Tag]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListMFADeviceTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmdtrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
--
-- * 'lmdtrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lmdtrrsResponseStatus' - -- | The response status code.
--
-- * 'lmdtrrsTags' - The list of tags that are currently attached to the virtual MFA device. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
listMFADeviceTagsResponse ::
  -- | 'lmdtrrsResponseStatus'
  Int ->
  ListMFADeviceTagsResponse
listMFADeviceTagsResponse pResponseStatus_ =
  ListMFADeviceTagsResponse'
    { _lmdtrrsIsTruncated =
        Nothing,
      _lmdtrrsMarker = Nothing,
      _lmdtrrsResponseStatus = pResponseStatus_,
      _lmdtrrsTags = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
lmdtrrsIsTruncated :: Lens' ListMFADeviceTagsResponse (Maybe Bool)
lmdtrrsIsTruncated = lens _lmdtrrsIsTruncated (\s a -> s {_lmdtrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lmdtrrsMarker :: Lens' ListMFADeviceTagsResponse (Maybe Text)
lmdtrrsMarker = lens _lmdtrrsMarker (\s a -> s {_lmdtrrsMarker = a})

-- | -- | The response status code.
lmdtrrsResponseStatus :: Lens' ListMFADeviceTagsResponse Int
lmdtrrsResponseStatus = lens _lmdtrrsResponseStatus (\s a -> s {_lmdtrrsResponseStatus = a})

-- | The list of tags that are currently attached to the virtual MFA device. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
lmdtrrsTags :: Lens' ListMFADeviceTagsResponse [Tag]
lmdtrrsTags = lens _lmdtrrsTags (\s a -> s {_lmdtrrsTags = a}) . _Coerce

instance NFData ListMFADeviceTagsResponse
