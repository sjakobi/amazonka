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
-- Module      : Network.AWS.IAM.ListInstanceProfilesForRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instance profiles that have the specified associated IAM role. If there are none, the operation returns an empty list. For more information about instance profiles, go to <https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html About instance profiles> .
--
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListInstanceProfilesForRole
  ( -- * Creating a Request
    listInstanceProfilesForRole,
    ListInstanceProfilesForRole,

    -- * Request Lenses
    lipfrMaxItems,
    lipfrMarker,
    lipfrRoleName,

    -- * Destructuring the Response
    listInstanceProfilesForRoleResponse,
    ListInstanceProfilesForRoleResponse,

    -- * Response Lenses
    lipfrrrsIsTruncated,
    lipfrrrsMarker,
    lipfrrrsResponseStatus,
    lipfrrrsInstanceProfiles,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listInstanceProfilesForRole' smart constructor.
data ListInstanceProfilesForRole = ListInstanceProfilesForRole'
  { _lipfrMaxItems ::
      !(Maybe Nat),
    _lipfrMarker ::
      !(Maybe Text),
    _lipfrRoleName ::
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

-- | Creates a value of 'ListInstanceProfilesForRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lipfrMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lipfrMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lipfrRoleName' - The name of the role to list instance profiles for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
listInstanceProfilesForRole ::
  -- | 'lipfrRoleName'
  Text ->
  ListInstanceProfilesForRole
listInstanceProfilesForRole pRoleName_ =
  ListInstanceProfilesForRole'
    { _lipfrMaxItems =
        Nothing,
      _lipfrMarker = Nothing,
      _lipfrRoleName = pRoleName_
    }

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lipfrMaxItems :: Lens' ListInstanceProfilesForRole (Maybe Natural)
lipfrMaxItems = lens _lipfrMaxItems (\s a -> s {_lipfrMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lipfrMarker :: Lens' ListInstanceProfilesForRole (Maybe Text)
lipfrMarker = lens _lipfrMarker (\s a -> s {_lipfrMarker = a})

-- | The name of the role to list instance profiles for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lipfrRoleName :: Lens' ListInstanceProfilesForRole Text
lipfrRoleName = lens _lipfrRoleName (\s a -> s {_lipfrRoleName = a})

instance AWSPager ListInstanceProfilesForRole where
  page rq rs
    | stop (rs ^. lipfrrrsIsTruncated) = Nothing
    | isNothing (rs ^. lipfrrrsMarker) = Nothing
    | otherwise =
      Just $ rq & lipfrMarker .~ rs ^. lipfrrrsMarker

instance AWSRequest ListInstanceProfilesForRole where
  type
    Rs ListInstanceProfilesForRole =
      ListInstanceProfilesForRoleResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListInstanceProfilesForRoleResult"
      ( \s h x ->
          ListInstanceProfilesForRoleResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "InstanceProfiles" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListInstanceProfilesForRole

instance NFData ListInstanceProfilesForRole

instance ToHeaders ListInstanceProfilesForRole where
  toHeaders = const mempty

instance ToPath ListInstanceProfilesForRole where
  toPath = const "/"

instance ToQuery ListInstanceProfilesForRole where
  toQuery ListInstanceProfilesForRole' {..} =
    mconcat
      [ "Action"
          =: ("ListInstanceProfilesForRole" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lipfrMaxItems,
        "Marker" =: _lipfrMarker,
        "RoleName" =: _lipfrRoleName
      ]

-- | Contains the response to a successful 'ListInstanceProfilesForRole' request.
--
--
--
-- /See:/ 'listInstanceProfilesForRoleResponse' smart constructor.
data ListInstanceProfilesForRoleResponse = ListInstanceProfilesForRoleResponse'
  { _lipfrrrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _lipfrrrsMarker ::
      !( Maybe
           Text
       ),
    _lipfrrrsResponseStatus ::
      !Int,
    _lipfrrrsInstanceProfiles ::
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

-- | Creates a value of 'ListInstanceProfilesForRoleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lipfrrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lipfrrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lipfrrrsResponseStatus' - -- | The response status code.
--
-- * 'lipfrrrsInstanceProfiles' - A list of instance profiles.
listInstanceProfilesForRoleResponse ::
  -- | 'lipfrrrsResponseStatus'
  Int ->
  ListInstanceProfilesForRoleResponse
listInstanceProfilesForRoleResponse pResponseStatus_ =
  ListInstanceProfilesForRoleResponse'
    { _lipfrrrsIsTruncated =
        Nothing,
      _lipfrrrsMarker = Nothing,
      _lipfrrrsResponseStatus =
        pResponseStatus_,
      _lipfrrrsInstanceProfiles = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lipfrrrsIsTruncated :: Lens' ListInstanceProfilesForRoleResponse (Maybe Bool)
lipfrrrsIsTruncated = lens _lipfrrrsIsTruncated (\s a -> s {_lipfrrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lipfrrrsMarker :: Lens' ListInstanceProfilesForRoleResponse (Maybe Text)
lipfrrrsMarker = lens _lipfrrrsMarker (\s a -> s {_lipfrrrsMarker = a})

-- | -- | The response status code.
lipfrrrsResponseStatus :: Lens' ListInstanceProfilesForRoleResponse Int
lipfrrrsResponseStatus = lens _lipfrrrsResponseStatus (\s a -> s {_lipfrrrsResponseStatus = a})

-- | A list of instance profiles.
lipfrrrsInstanceProfiles :: Lens' ListInstanceProfilesForRoleResponse [InstanceProfile]
lipfrrrsInstanceProfiles = lens _lipfrrrsInstanceProfiles (\s a -> s {_lipfrrrsInstanceProfiles = a}) . _Coerce

instance NFData ListInstanceProfilesForRoleResponse
