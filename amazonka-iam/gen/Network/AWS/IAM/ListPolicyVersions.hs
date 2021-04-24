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
-- Module      : Network.AWS.IAM.ListPolicyVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version.
--
--
-- For more information about managed policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListPolicyVersions
  ( -- * Creating a Request
    listPolicyVersions,
    ListPolicyVersions,

    -- * Request Lenses
    lpvMaxItems,
    lpvMarker,
    lpvPolicyARN,

    -- * Destructuring the Response
    listPolicyVersionsResponse,
    ListPolicyVersionsResponse,

    -- * Response Lenses
    lpvrrsVersions,
    lpvrrsIsTruncated,
    lpvrrsMarker,
    lpvrrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPolicyVersions' smart constructor.
data ListPolicyVersions = ListPolicyVersions'
  { _lpvMaxItems ::
      !(Maybe Nat),
    _lpvMarker :: !(Maybe Text),
    _lpvPolicyARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPolicyVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpvMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lpvMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lpvPolicyARN' - The Amazon Resource Name (ARN) of the IAM policy for which you want the versions. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
listPolicyVersions ::
  -- | 'lpvPolicyARN'
  Text ->
  ListPolicyVersions
listPolicyVersions pPolicyARN_ =
  ListPolicyVersions'
    { _lpvMaxItems = Nothing,
      _lpvMarker = Nothing,
      _lpvPolicyARN = pPolicyARN_
    }

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lpvMaxItems :: Lens' ListPolicyVersions (Maybe Natural)
lpvMaxItems = lens _lpvMaxItems (\s a -> s {_lpvMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lpvMarker :: Lens' ListPolicyVersions (Maybe Text)
lpvMarker = lens _lpvMarker (\s a -> s {_lpvMarker = a})

-- | The Amazon Resource Name (ARN) of the IAM policy for which you want the versions. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
lpvPolicyARN :: Lens' ListPolicyVersions Text
lpvPolicyARN = lens _lpvPolicyARN (\s a -> s {_lpvPolicyARN = a})

instance AWSPager ListPolicyVersions where
  page rq rs
    | stop (rs ^. lpvrrsIsTruncated) = Nothing
    | isNothing (rs ^. lpvrrsMarker) = Nothing
    | otherwise =
      Just $ rq & lpvMarker .~ rs ^. lpvrrsMarker

instance AWSRequest ListPolicyVersions where
  type
    Rs ListPolicyVersions =
      ListPolicyVersionsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListPolicyVersionsResult"
      ( \s h x ->
          ListPolicyVersionsResponse'
            <$> ( x .@? "Versions" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListPolicyVersions

instance NFData ListPolicyVersions

instance ToHeaders ListPolicyVersions where
  toHeaders = const mempty

instance ToPath ListPolicyVersions where
  toPath = const "/"

instance ToQuery ListPolicyVersions where
  toQuery ListPolicyVersions' {..} =
    mconcat
      [ "Action" =: ("ListPolicyVersions" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lpvMaxItems,
        "Marker" =: _lpvMarker,
        "PolicyArn" =: _lpvPolicyARN
      ]

-- | Contains the response to a successful 'ListPolicyVersions' request.
--
--
--
-- /See:/ 'listPolicyVersionsResponse' smart constructor.
data ListPolicyVersionsResponse = ListPolicyVersionsResponse'
  { _lpvrrsVersions ::
      !( Maybe
           [PolicyVersion]
       ),
    _lpvrrsIsTruncated ::
      !(Maybe Bool),
    _lpvrrsMarker ::
      !(Maybe Text),
    _lpvrrsResponseStatus ::
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

-- | Creates a value of 'ListPolicyVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpvrrsVersions' - A list of policy versions. For more information about managed policy versions, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html Versioning for managed policies> in the /IAM User Guide/ .
--
-- * 'lpvrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lpvrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lpvrrsResponseStatus' - -- | The response status code.
listPolicyVersionsResponse ::
  -- | 'lpvrrsResponseStatus'
  Int ->
  ListPolicyVersionsResponse
listPolicyVersionsResponse pResponseStatus_ =
  ListPolicyVersionsResponse'
    { _lpvrrsVersions =
        Nothing,
      _lpvrrsIsTruncated = Nothing,
      _lpvrrsMarker = Nothing,
      _lpvrrsResponseStatus = pResponseStatus_
    }

-- | A list of policy versions. For more information about managed policy versions, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html Versioning for managed policies> in the /IAM User Guide/ .
lpvrrsVersions :: Lens' ListPolicyVersionsResponse [PolicyVersion]
lpvrrsVersions = lens _lpvrrsVersions (\s a -> s {_lpvrrsVersions = a}) . _Default . _Coerce

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lpvrrsIsTruncated :: Lens' ListPolicyVersionsResponse (Maybe Bool)
lpvrrsIsTruncated = lens _lpvrrsIsTruncated (\s a -> s {_lpvrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lpvrrsMarker :: Lens' ListPolicyVersionsResponse (Maybe Text)
lpvrrsMarker = lens _lpvrrsMarker (\s a -> s {_lpvrrsMarker = a})

-- | -- | The response status code.
lpvrrsResponseStatus :: Lens' ListPolicyVersionsResponse Int
lpvrrsResponseStatus = lens _lpvrrsResponseStatus (\s a -> s {_lpvrrsResponseStatus = a})

instance NFData ListPolicyVersionsResponse
