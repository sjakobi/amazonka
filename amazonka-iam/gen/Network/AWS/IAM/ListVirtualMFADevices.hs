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
-- Module      : Network.AWS.IAM.ListVirtualMFADevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the virtual MFA devices defined in the AWS account by assignment status. If you do not specify an assignment status, the operation returns a list of all virtual MFA devices. Assignment status can be @Assigned@ , @Unassigned@ , or @Any@ .
--
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListVirtualMFADevices
  ( -- * Creating a Request
    listVirtualMFADevices,
    ListVirtualMFADevices,

    -- * Request Lenses
    lvmdAssignmentStatus,
    lvmdMaxItems,
    lvmdMarker,

    -- * Destructuring the Response
    listVirtualMFADevicesResponse,
    ListVirtualMFADevicesResponse,

    -- * Response Lenses
    lvmdrrsIsTruncated,
    lvmdrrsMarker,
    lvmdrrsResponseStatus,
    lvmdrrsVirtualMFADevices,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listVirtualMFADevices' smart constructor.
data ListVirtualMFADevices = ListVirtualMFADevices'
  { _lvmdAssignmentStatus ::
      !( Maybe
           AssignmentStatusType
       ),
    _lvmdMaxItems ::
      !(Maybe Nat),
    _lvmdMarker ::
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

-- | Creates a value of 'ListVirtualMFADevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvmdAssignmentStatus' - The status (@Unassigned@ or @Assigned@ ) of the devices to list. If you do not specify an @AssignmentStatus@ , the operation defaults to @Any@ , which lists both assigned and unassigned virtual MFA devices.,
--
-- * 'lvmdMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lvmdMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listVirtualMFADevices ::
  ListVirtualMFADevices
listVirtualMFADevices =
  ListVirtualMFADevices'
    { _lvmdAssignmentStatus =
        Nothing,
      _lvmdMaxItems = Nothing,
      _lvmdMarker = Nothing
    }

-- | The status (@Unassigned@ or @Assigned@ ) of the devices to list. If you do not specify an @AssignmentStatus@ , the operation defaults to @Any@ , which lists both assigned and unassigned virtual MFA devices.,
lvmdAssignmentStatus :: Lens' ListVirtualMFADevices (Maybe AssignmentStatusType)
lvmdAssignmentStatus = lens _lvmdAssignmentStatus (\s a -> s {_lvmdAssignmentStatus = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lvmdMaxItems :: Lens' ListVirtualMFADevices (Maybe Natural)
lvmdMaxItems = lens _lvmdMaxItems (\s a -> s {_lvmdMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lvmdMarker :: Lens' ListVirtualMFADevices (Maybe Text)
lvmdMarker = lens _lvmdMarker (\s a -> s {_lvmdMarker = a})

instance AWSPager ListVirtualMFADevices where
  page rq rs
    | stop (rs ^. lvmdrrsIsTruncated) = Nothing
    | isNothing (rs ^. lvmdrrsMarker) = Nothing
    | otherwise =
      Just $ rq & lvmdMarker .~ rs ^. lvmdrrsMarker

instance AWSRequest ListVirtualMFADevices where
  type
    Rs ListVirtualMFADevices =
      ListVirtualMFADevicesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListVirtualMFADevicesResult"
      ( \s h x ->
          ListVirtualMFADevicesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "VirtualMFADevices" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListVirtualMFADevices

instance NFData ListVirtualMFADevices

instance ToHeaders ListVirtualMFADevices where
  toHeaders = const mempty

instance ToPath ListVirtualMFADevices where
  toPath = const "/"

instance ToQuery ListVirtualMFADevices where
  toQuery ListVirtualMFADevices' {..} =
    mconcat
      [ "Action" =: ("ListVirtualMFADevices" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "AssignmentStatus" =: _lvmdAssignmentStatus,
        "MaxItems" =: _lvmdMaxItems,
        "Marker" =: _lvmdMarker
      ]

-- | Contains the response to a successful 'ListVirtualMFADevices' request.
--
--
--
-- /See:/ 'listVirtualMFADevicesResponse' smart constructor.
data ListVirtualMFADevicesResponse = ListVirtualMFADevicesResponse'
  { _lvmdrrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _lvmdrrsMarker ::
      !( Maybe
           Text
       ),
    _lvmdrrsResponseStatus ::
      !Int,
    _lvmdrrsVirtualMFADevices ::
      ![VirtualMFADevice]
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListVirtualMFADevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvmdrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lvmdrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lvmdrrsResponseStatus' - -- | The response status code.
--
-- * 'lvmdrrsVirtualMFADevices' - The list of virtual MFA devices in the current account that match the @AssignmentStatus@ value that was passed in the request.
listVirtualMFADevicesResponse ::
  -- | 'lvmdrrsResponseStatus'
  Int ->
  ListVirtualMFADevicesResponse
listVirtualMFADevicesResponse pResponseStatus_ =
  ListVirtualMFADevicesResponse'
    { _lvmdrrsIsTruncated =
        Nothing,
      _lvmdrrsMarker = Nothing,
      _lvmdrrsResponseStatus = pResponseStatus_,
      _lvmdrrsVirtualMFADevices = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lvmdrrsIsTruncated :: Lens' ListVirtualMFADevicesResponse (Maybe Bool)
lvmdrrsIsTruncated = lens _lvmdrrsIsTruncated (\s a -> s {_lvmdrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lvmdrrsMarker :: Lens' ListVirtualMFADevicesResponse (Maybe Text)
lvmdrrsMarker = lens _lvmdrrsMarker (\s a -> s {_lvmdrrsMarker = a})

-- | -- | The response status code.
lvmdrrsResponseStatus :: Lens' ListVirtualMFADevicesResponse Int
lvmdrrsResponseStatus = lens _lvmdrrsResponseStatus (\s a -> s {_lvmdrrsResponseStatus = a})

-- | The list of virtual MFA devices in the current account that match the @AssignmentStatus@ value that was passed in the request.
lvmdrrsVirtualMFADevices :: Lens' ListVirtualMFADevicesResponse [VirtualMFADevice]
lvmdrrsVirtualMFADevices = lens _lvmdrrsVirtualMFADevices (\s a -> s {_lvmdrrsVirtualMFADevices = a}) . _Coerce

instance NFData ListVirtualMFADevicesResponse
