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
-- Module      : Network.AWS.IAM.ListSigningCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the signing certificates associated with the specified IAM user. If none exists, the operation returns an empty list.
--
--
-- Although each user is limited to a small number of signing certificates, you can still paginate the results using the @MaxItems@ and @Marker@ parameters.
--
-- If the @UserName@ field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request for this operation. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListSigningCertificates
  ( -- * Creating a Request
    listSigningCertificates,
    ListSigningCertificates,

    -- * Request Lenses
    lscUserName,
    lscMaxItems,
    lscMarker,

    -- * Destructuring the Response
    listSigningCertificatesResponse,
    ListSigningCertificatesResponse,

    -- * Response Lenses
    lscrrsIsTruncated,
    lscrrsMarker,
    lscrrsResponseStatus,
    lscrrsCertificates,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSigningCertificates' smart constructor.
data ListSigningCertificates = ListSigningCertificates'
  { _lscUserName ::
      !(Maybe Text),
    _lscMaxItems ::
      !(Maybe Nat),
    _lscMarker ::
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

-- | Creates a value of 'ListSigningCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscUserName' - The name of the IAM user whose signing certificates you want to examine. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'lscMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lscMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listSigningCertificates ::
  ListSigningCertificates
listSigningCertificates =
  ListSigningCertificates'
    { _lscUserName = Nothing,
      _lscMaxItems = Nothing,
      _lscMarker = Nothing
    }

-- | The name of the IAM user whose signing certificates you want to examine. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lscUserName :: Lens' ListSigningCertificates (Maybe Text)
lscUserName = lens _lscUserName (\s a -> s {_lscUserName = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lscMaxItems :: Lens' ListSigningCertificates (Maybe Natural)
lscMaxItems = lens _lscMaxItems (\s a -> s {_lscMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lscMarker :: Lens' ListSigningCertificates (Maybe Text)
lscMarker = lens _lscMarker (\s a -> s {_lscMarker = a})

instance AWSPager ListSigningCertificates where
  page rq rs
    | stop (rs ^. lscrrsIsTruncated) = Nothing
    | isNothing (rs ^. lscrrsMarker) = Nothing
    | otherwise =
      Just $ rq & lscMarker .~ rs ^. lscrrsMarker

instance AWSRequest ListSigningCertificates where
  type
    Rs ListSigningCertificates =
      ListSigningCertificatesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListSigningCertificatesResult"
      ( \s h x ->
          ListSigningCertificatesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "Certificates" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListSigningCertificates

instance NFData ListSigningCertificates

instance ToHeaders ListSigningCertificates where
  toHeaders = const mempty

instance ToPath ListSigningCertificates where
  toPath = const "/"

instance ToQuery ListSigningCertificates where
  toQuery ListSigningCertificates' {..} =
    mconcat
      [ "Action"
          =: ("ListSigningCertificates" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "UserName" =: _lscUserName,
        "MaxItems" =: _lscMaxItems,
        "Marker" =: _lscMarker
      ]

-- | Contains the response to a successful 'ListSigningCertificates' request.
--
--
--
-- /See:/ 'listSigningCertificatesResponse' smart constructor.
data ListSigningCertificatesResponse = ListSigningCertificatesResponse'
  { _lscrrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _lscrrsMarker ::
      !( Maybe
           Text
       ),
    _lscrrsResponseStatus ::
      !Int,
    _lscrrsCertificates ::
      ![SigningCertificate]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListSigningCertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lscrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lscrrsResponseStatus' - -- | The response status code.
--
-- * 'lscrrsCertificates' - A list of the user's signing certificate information.
listSigningCertificatesResponse ::
  -- | 'lscrrsResponseStatus'
  Int ->
  ListSigningCertificatesResponse
listSigningCertificatesResponse pResponseStatus_ =
  ListSigningCertificatesResponse'
    { _lscrrsIsTruncated =
        Nothing,
      _lscrrsMarker = Nothing,
      _lscrrsResponseStatus = pResponseStatus_,
      _lscrrsCertificates = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lscrrsIsTruncated :: Lens' ListSigningCertificatesResponse (Maybe Bool)
lscrrsIsTruncated = lens _lscrrsIsTruncated (\s a -> s {_lscrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lscrrsMarker :: Lens' ListSigningCertificatesResponse (Maybe Text)
lscrrsMarker = lens _lscrrsMarker (\s a -> s {_lscrrsMarker = a})

-- | -- | The response status code.
lscrrsResponseStatus :: Lens' ListSigningCertificatesResponse Int
lscrrsResponseStatus = lens _lscrrsResponseStatus (\s a -> s {_lscrrsResponseStatus = a})

-- | A list of the user's signing certificate information.
lscrrsCertificates :: Lens' ListSigningCertificatesResponse [SigningCertificate]
lscrrsCertificates = lens _lscrrsCertificates (\s a -> s {_lscrrsCertificates = a}) . _Coerce

instance NFData ListSigningCertificatesResponse
