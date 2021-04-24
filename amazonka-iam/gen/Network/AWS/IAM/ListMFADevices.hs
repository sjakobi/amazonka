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
-- Module      : Network.AWS.IAM.ListMFADevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this operation lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request for this operation.
--
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListMFADevices
  ( -- * Creating a Request
    listMFADevices,
    ListMFADevices,

    -- * Request Lenses
    lmdUserName,
    lmdMaxItems,
    lmdMarker,

    -- * Destructuring the Response
    listMFADevicesResponse,
    ListMFADevicesResponse,

    -- * Response Lenses
    lmdrrsIsTruncated,
    lmdrrsMarker,
    lmdrrsResponseStatus,
    lmdrrsMFADevices,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listMFADevices' smart constructor.
data ListMFADevices = ListMFADevices'
  { _lmdUserName ::
      !(Maybe Text),
    _lmdMaxItems :: !(Maybe Nat),
    _lmdMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMFADevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmdUserName' - The name of the user whose MFA devices you want to list. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'lmdMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lmdMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listMFADevices ::
  ListMFADevices
listMFADevices =
  ListMFADevices'
    { _lmdUserName = Nothing,
      _lmdMaxItems = Nothing,
      _lmdMarker = Nothing
    }

-- | The name of the user whose MFA devices you want to list. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lmdUserName :: Lens' ListMFADevices (Maybe Text)
lmdUserName = lens _lmdUserName (\s a -> s {_lmdUserName = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lmdMaxItems :: Lens' ListMFADevices (Maybe Natural)
lmdMaxItems = lens _lmdMaxItems (\s a -> s {_lmdMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lmdMarker :: Lens' ListMFADevices (Maybe Text)
lmdMarker = lens _lmdMarker (\s a -> s {_lmdMarker = a})

instance AWSPager ListMFADevices where
  page rq rs
    | stop (rs ^. lmdrrsIsTruncated) = Nothing
    | isNothing (rs ^. lmdrrsMarker) = Nothing
    | otherwise =
      Just $ rq & lmdMarker .~ rs ^. lmdrrsMarker

instance AWSRequest ListMFADevices where
  type Rs ListMFADevices = ListMFADevicesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListMFADevicesResult"
      ( \s h x ->
          ListMFADevicesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "MFADevices" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListMFADevices

instance NFData ListMFADevices

instance ToHeaders ListMFADevices where
  toHeaders = const mempty

instance ToPath ListMFADevices where
  toPath = const "/"

instance ToQuery ListMFADevices where
  toQuery ListMFADevices' {..} =
    mconcat
      [ "Action" =: ("ListMFADevices" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "UserName" =: _lmdUserName,
        "MaxItems" =: _lmdMaxItems,
        "Marker" =: _lmdMarker
      ]

-- | Contains the response to a successful 'ListMFADevices' request.
--
--
--
-- /See:/ 'listMFADevicesResponse' smart constructor.
data ListMFADevicesResponse = ListMFADevicesResponse'
  { _lmdrrsIsTruncated ::
      !(Maybe Bool),
    _lmdrrsMarker ::
      !(Maybe Text),
    _lmdrrsResponseStatus ::
      !Int,
    _lmdrrsMFADevices ::
      ![MFADevice]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListMFADevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmdrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lmdrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lmdrrsResponseStatus' - -- | The response status code.
--
-- * 'lmdrrsMFADevices' - A list of MFA devices.
listMFADevicesResponse ::
  -- | 'lmdrrsResponseStatus'
  Int ->
  ListMFADevicesResponse
listMFADevicesResponse pResponseStatus_ =
  ListMFADevicesResponse'
    { _lmdrrsIsTruncated =
        Nothing,
      _lmdrrsMarker = Nothing,
      _lmdrrsResponseStatus = pResponseStatus_,
      _lmdrrsMFADevices = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lmdrrsIsTruncated :: Lens' ListMFADevicesResponse (Maybe Bool)
lmdrrsIsTruncated = lens _lmdrrsIsTruncated (\s a -> s {_lmdrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lmdrrsMarker :: Lens' ListMFADevicesResponse (Maybe Text)
lmdrrsMarker = lens _lmdrrsMarker (\s a -> s {_lmdrrsMarker = a})

-- | -- | The response status code.
lmdrrsResponseStatus :: Lens' ListMFADevicesResponse Int
lmdrrsResponseStatus = lens _lmdrrsResponseStatus (\s a -> s {_lmdrrsResponseStatus = a})

-- | A list of MFA devices.
lmdrrsMFADevices :: Lens' ListMFADevicesResponse [MFADevice]
lmdrrsMFADevices = lens _lmdrrsMFADevices (\s a -> s {_lmdrrsMFADevices = a}) . _Coerce

instance NFData ListMFADevicesResponse
