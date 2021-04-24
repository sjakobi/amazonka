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
-- Module      : Network.AWS.IAM.ListInstanceProfiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instance profiles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about instance profiles, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html About instance profiles> .
--
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListInstanceProfiles
  ( -- * Creating a Request
    listInstanceProfiles,
    ListInstanceProfiles,

    -- * Request Lenses
    lipPathPrefix,
    lipMaxItems,
    lipMarker,

    -- * Destructuring the Response
    listInstanceProfilesResponse,
    ListInstanceProfilesResponse,

    -- * Response Lenses
    liprrsIsTruncated,
    liprrsMarker,
    liprrsResponseStatus,
    liprrsInstanceProfiles,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listInstanceProfiles' smart constructor.
data ListInstanceProfiles = ListInstanceProfiles'
  { _lipPathPrefix ::
      !(Maybe Text),
    _lipMaxItems :: !(Maybe Nat),
    _lipMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInstanceProfiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lipPathPrefix' - The path prefix for filtering the results. For example, the prefix @/application_abc/component_xyz/@ gets all instance profiles whose path starts with @/application_abc/component_xyz/@ . This parameter is optional. If it is not included, it defaults to a slash (/), listing all instance profiles. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- * 'lipMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lipMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listInstanceProfiles ::
  ListInstanceProfiles
listInstanceProfiles =
  ListInstanceProfiles'
    { _lipPathPrefix = Nothing,
      _lipMaxItems = Nothing,
      _lipMarker = Nothing
    }

-- | The path prefix for filtering the results. For example, the prefix @/application_abc/component_xyz/@ gets all instance profiles whose path starts with @/application_abc/component_xyz/@ . This parameter is optional. If it is not included, it defaults to a slash (/), listing all instance profiles. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
lipPathPrefix :: Lens' ListInstanceProfiles (Maybe Text)
lipPathPrefix = lens _lipPathPrefix (\s a -> s {_lipPathPrefix = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lipMaxItems :: Lens' ListInstanceProfiles (Maybe Natural)
lipMaxItems = lens _lipMaxItems (\s a -> s {_lipMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lipMarker :: Lens' ListInstanceProfiles (Maybe Text)
lipMarker = lens _lipMarker (\s a -> s {_lipMarker = a})

instance AWSPager ListInstanceProfiles where
  page rq rs
    | stop (rs ^. liprrsIsTruncated) = Nothing
    | isNothing (rs ^. liprrsMarker) = Nothing
    | otherwise =
      Just $ rq & lipMarker .~ rs ^. liprrsMarker

instance AWSRequest ListInstanceProfiles where
  type
    Rs ListInstanceProfiles =
      ListInstanceProfilesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListInstanceProfilesResult"
      ( \s h x ->
          ListInstanceProfilesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "InstanceProfiles" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListInstanceProfiles

instance NFData ListInstanceProfiles

instance ToHeaders ListInstanceProfiles where
  toHeaders = const mempty

instance ToPath ListInstanceProfiles where
  toPath = const "/"

instance ToQuery ListInstanceProfiles where
  toQuery ListInstanceProfiles' {..} =
    mconcat
      [ "Action" =: ("ListInstanceProfiles" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PathPrefix" =: _lipPathPrefix,
        "MaxItems" =: _lipMaxItems,
        "Marker" =: _lipMarker
      ]

-- | Contains the response to a successful 'ListInstanceProfiles' request.
--
--
--
-- /See:/ 'listInstanceProfilesResponse' smart constructor.
data ListInstanceProfilesResponse = ListInstanceProfilesResponse'
  { _liprrsIsTruncated ::
      !(Maybe Bool),
    _liprrsMarker ::
      !(Maybe Text),
    _liprrsResponseStatus ::
      !Int,
    _liprrsInstanceProfiles ::
      ![InstanceProfile]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListInstanceProfilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liprrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'liprrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'liprrsResponseStatus' - -- | The response status code.
--
-- * 'liprrsInstanceProfiles' - A list of instance profiles.
listInstanceProfilesResponse ::
  -- | 'liprrsResponseStatus'
  Int ->
  ListInstanceProfilesResponse
listInstanceProfilesResponse pResponseStatus_ =
  ListInstanceProfilesResponse'
    { _liprrsIsTruncated =
        Nothing,
      _liprrsMarker = Nothing,
      _liprrsResponseStatus = pResponseStatus_,
      _liprrsInstanceProfiles = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
liprrsIsTruncated :: Lens' ListInstanceProfilesResponse (Maybe Bool)
liprrsIsTruncated = lens _liprrsIsTruncated (\s a -> s {_liprrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
liprrsMarker :: Lens' ListInstanceProfilesResponse (Maybe Text)
liprrsMarker = lens _liprrsMarker (\s a -> s {_liprrsMarker = a})

-- | -- | The response status code.
liprrsResponseStatus :: Lens' ListInstanceProfilesResponse Int
liprrsResponseStatus = lens _liprrsResponseStatus (\s a -> s {_liprrsResponseStatus = a})

-- | A list of instance profiles.
liprrsInstanceProfiles :: Lens' ListInstanceProfilesResponse [InstanceProfile]
liprrsInstanceProfiles = lens _liprrsInstanceProfiles (\s a -> s {_liprrsInstanceProfiles = a}) . _Coerce

instance NFData ListInstanceProfilesResponse
