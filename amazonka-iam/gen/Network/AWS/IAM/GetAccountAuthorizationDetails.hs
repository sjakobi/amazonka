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
-- Module      : Network.AWS.IAM.GetAccountAuthorizationDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about all IAM users, groups, roles, and policies in your AWS account, including their relationships to one another. Use this operation to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.
--
--
-- You can optionally filter the results using the @Filter@ parameter. You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.GetAccountAuthorizationDetails
  ( -- * Creating a Request
    getAccountAuthorizationDetails,
    GetAccountAuthorizationDetails,

    -- * Request Lenses
    gaadFilter,
    gaadMaxItems,
    gaadMarker,

    -- * Destructuring the Response
    getAccountAuthorizationDetailsResponse,
    GetAccountAuthorizationDetailsResponse,

    -- * Response Lenses
    gaadrrsRoleDetailList,
    gaadrrsGroupDetailList,
    gaadrrsPolicies,
    gaadrrsIsTruncated,
    gaadrrsUserDetailList,
    gaadrrsMarker,
    gaadrrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAccountAuthorizationDetails' smart constructor.
data GetAccountAuthorizationDetails = GetAccountAuthorizationDetails'
  { _gaadFilter ::
      !( Maybe
           [EntityType]
       ),
    _gaadMaxItems ::
      !( Maybe
           Nat
       ),
    _gaadMarker ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAccountAuthorizationDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaadFilter' - A list of entity types used to filter the results. Only the entities that match the types you specify are included in the output. Use the value @LocalManagedPolicy@ to include customer managed policies. The format for this parameter is a comma-separated (if more than one) list of strings. Each string value in the list must be one of the valid values listed below.
--
-- * 'gaadMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'gaadMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
getAccountAuthorizationDetails ::
  GetAccountAuthorizationDetails
getAccountAuthorizationDetails =
  GetAccountAuthorizationDetails'
    { _gaadFilter =
        Nothing,
      _gaadMaxItems = Nothing,
      _gaadMarker = Nothing
    }

-- | A list of entity types used to filter the results. Only the entities that match the types you specify are included in the output. Use the value @LocalManagedPolicy@ to include customer managed policies. The format for this parameter is a comma-separated (if more than one) list of strings. Each string value in the list must be one of the valid values listed below.
gaadFilter :: Lens' GetAccountAuthorizationDetails [EntityType]
gaadFilter = lens _gaadFilter (\s a -> s {_gaadFilter = a}) . _Default . _Coerce

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
gaadMaxItems :: Lens' GetAccountAuthorizationDetails (Maybe Natural)
gaadMaxItems = lens _gaadMaxItems (\s a -> s {_gaadMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
gaadMarker :: Lens' GetAccountAuthorizationDetails (Maybe Text)
gaadMarker = lens _gaadMarker (\s a -> s {_gaadMarker = a})

instance AWSPager GetAccountAuthorizationDetails where
  page rq rs
    | stop (rs ^. gaadrrsIsTruncated) = Nothing
    | isNothing (rs ^. gaadrrsMarker) = Nothing
    | otherwise =
      Just $ rq & gaadMarker .~ rs ^. gaadrrsMarker

instance AWSRequest GetAccountAuthorizationDetails where
  type
    Rs GetAccountAuthorizationDetails =
      GetAccountAuthorizationDetailsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetAccountAuthorizationDetailsResult"
      ( \s h x ->
          GetAccountAuthorizationDetailsResponse'
            <$> ( x .@? "RoleDetailList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "GroupDetailList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "Policies" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "IsTruncated")
            <*> ( x .@? "UserDetailList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAccountAuthorizationDetails

instance NFData GetAccountAuthorizationDetails

instance ToHeaders GetAccountAuthorizationDetails where
  toHeaders = const mempty

instance ToPath GetAccountAuthorizationDetails where
  toPath = const "/"

instance ToQuery GetAccountAuthorizationDetails where
  toQuery GetAccountAuthorizationDetails' {..} =
    mconcat
      [ "Action"
          =: ("GetAccountAuthorizationDetails" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "Filter"
          =: toQuery (toQueryList "member" <$> _gaadFilter),
        "MaxItems" =: _gaadMaxItems,
        "Marker" =: _gaadMarker
      ]

-- | Contains the response to a successful 'GetAccountAuthorizationDetails' request.
--
--
--
-- /See:/ 'getAccountAuthorizationDetailsResponse' smart constructor.
data GetAccountAuthorizationDetailsResponse = GetAccountAuthorizationDetailsResponse'
  { _gaadrrsRoleDetailList ::
      !( Maybe
           [RoleDetail]
       ),
    _gaadrrsGroupDetailList ::
      !( Maybe
           [GroupDetail]
       ),
    _gaadrrsPolicies ::
      !( Maybe
           [ManagedPolicyDetail]
       ),
    _gaadrrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _gaadrrsUserDetailList ::
      !( Maybe
           [UserDetail]
       ),
    _gaadrrsMarker ::
      !( Maybe
           Text
       ),
    _gaadrrsResponseStatus ::
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

-- | Creates a value of 'GetAccountAuthorizationDetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaadrrsRoleDetailList' - A list containing information about IAM roles.
--
-- * 'gaadrrsGroupDetailList' - A list containing information about IAM groups.
--
-- * 'gaadrrsPolicies' - A list containing information about managed policies.
--
-- * 'gaadrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'gaadrrsUserDetailList' - A list containing information about IAM users.
--
-- * 'gaadrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'gaadrrsResponseStatus' - -- | The response status code.
getAccountAuthorizationDetailsResponse ::
  -- | 'gaadrrsResponseStatus'
  Int ->
  GetAccountAuthorizationDetailsResponse
getAccountAuthorizationDetailsResponse
  pResponseStatus_ =
    GetAccountAuthorizationDetailsResponse'
      { _gaadrrsRoleDetailList =
          Nothing,
        _gaadrrsGroupDetailList = Nothing,
        _gaadrrsPolicies = Nothing,
        _gaadrrsIsTruncated = Nothing,
        _gaadrrsUserDetailList = Nothing,
        _gaadrrsMarker = Nothing,
        _gaadrrsResponseStatus =
          pResponseStatus_
      }

-- | A list containing information about IAM roles.
gaadrrsRoleDetailList :: Lens' GetAccountAuthorizationDetailsResponse [RoleDetail]
gaadrrsRoleDetailList = lens _gaadrrsRoleDetailList (\s a -> s {_gaadrrsRoleDetailList = a}) . _Default . _Coerce

-- | A list containing information about IAM groups.
gaadrrsGroupDetailList :: Lens' GetAccountAuthorizationDetailsResponse [GroupDetail]
gaadrrsGroupDetailList = lens _gaadrrsGroupDetailList (\s a -> s {_gaadrrsGroupDetailList = a}) . _Default . _Coerce

-- | A list containing information about managed policies.
gaadrrsPolicies :: Lens' GetAccountAuthorizationDetailsResponse [ManagedPolicyDetail]
gaadrrsPolicies = lens _gaadrrsPolicies (\s a -> s {_gaadrrsPolicies = a}) . _Default . _Coerce

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
gaadrrsIsTruncated :: Lens' GetAccountAuthorizationDetailsResponse (Maybe Bool)
gaadrrsIsTruncated = lens _gaadrrsIsTruncated (\s a -> s {_gaadrrsIsTruncated = a})

-- | A list containing information about IAM users.
gaadrrsUserDetailList :: Lens' GetAccountAuthorizationDetailsResponse [UserDetail]
gaadrrsUserDetailList = lens _gaadrrsUserDetailList (\s a -> s {_gaadrrsUserDetailList = a}) . _Default . _Coerce

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
gaadrrsMarker :: Lens' GetAccountAuthorizationDetailsResponse (Maybe Text)
gaadrrsMarker = lens _gaadrrsMarker (\s a -> s {_gaadrrsMarker = a})

-- | -- | The response status code.
gaadrrsResponseStatus :: Lens' GetAccountAuthorizationDetailsResponse Int
gaadrrsResponseStatus = lens _gaadrrsResponseStatus (\s a -> s {_gaadrrsResponseStatus = a})

instance
  NFData
    GetAccountAuthorizationDetailsResponse
