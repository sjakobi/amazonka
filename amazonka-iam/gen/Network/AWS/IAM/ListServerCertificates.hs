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
-- Module      : Network.AWS.IAM.ListServerCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the operation returns an empty list.
--
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
-- For more information about working with server certificates, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html Working with server certificates> in the /IAM User Guide/ . This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListServerCertificates
  ( -- * Creating a Request
    listServerCertificates,
    ListServerCertificates,

    -- * Request Lenses
    lPathPrefix,
    lMaxItems,
    lMarker,

    -- * Destructuring the Response
    listServerCertificatesResponse,
    ListServerCertificatesResponse,

    -- * Response Lenses
    lrsIsTruncated,
    lrsMarker,
    lrsResponseStatus,
    lrsServerCertificateMetadataList,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listServerCertificates' smart constructor.
data ListServerCertificates = ListServerCertificates'
  { _lPathPrefix ::
      !(Maybe Text),
    _lMaxItems ::
      !(Maybe Nat),
    _lMarker :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListServerCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lPathPrefix' - The path prefix for filtering the results. For example: @/company/servercerts@ would get all server certificates for which the path starts with @/company/servercerts@ . This parameter is optional. If it is not included, it defaults to a slash (/), listing all server certificates. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- * 'lMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listServerCertificates ::
  ListServerCertificates
listServerCertificates =
  ListServerCertificates'
    { _lPathPrefix = Nothing,
      _lMaxItems = Nothing,
      _lMarker = Nothing
    }

-- | The path prefix for filtering the results. For example: @/company/servercerts@ would get all server certificates for which the path starts with @/company/servercerts@ . This parameter is optional. If it is not included, it defaults to a slash (/), listing all server certificates. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
lPathPrefix :: Lens' ListServerCertificates (Maybe Text)
lPathPrefix = lens _lPathPrefix (\s a -> s {_lPathPrefix = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lMaxItems :: Lens' ListServerCertificates (Maybe Natural)
lMaxItems = lens _lMaxItems (\s a -> s {_lMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lMarker :: Lens' ListServerCertificates (Maybe Text)
lMarker = lens _lMarker (\s a -> s {_lMarker = a})

instance AWSPager ListServerCertificates where
  page rq rs
    | stop (rs ^. lrsIsTruncated) = Nothing
    | isNothing (rs ^. lrsMarker) = Nothing
    | otherwise = Just $ rq & lMarker .~ rs ^. lrsMarker

instance AWSRequest ListServerCertificates where
  type
    Rs ListServerCertificates =
      ListServerCertificatesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListServerCertificatesResult"
      ( \s h x ->
          ListServerCertificatesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "ServerCertificateMetadataList" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListServerCertificates

instance NFData ListServerCertificates

instance ToHeaders ListServerCertificates where
  toHeaders = const mempty

instance ToPath ListServerCertificates where
  toPath = const "/"

instance ToQuery ListServerCertificates where
  toQuery ListServerCertificates' {..} =
    mconcat
      [ "Action"
          =: ("ListServerCertificates" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PathPrefix" =: _lPathPrefix,
        "MaxItems" =: _lMaxItems,
        "Marker" =: _lMarker
      ]

-- | Contains the response to a successful 'ListServerCertificates' request.
--
--
--
-- /See:/ 'listServerCertificatesResponse' smart constructor.
data ListServerCertificatesResponse = ListServerCertificatesResponse'
  { _lrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _lrsMarker ::
      !( Maybe
           Text
       ),
    _lrsResponseStatus ::
      !Int,
    _lrsServerCertificateMetadataList ::
      ![ServerCertificateMetadata]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListServerCertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lrsResponseStatus' - -- | The response status code.
--
-- * 'lrsServerCertificateMetadataList' - A list of server certificates.
listServerCertificatesResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListServerCertificatesResponse
listServerCertificatesResponse pResponseStatus_ =
  ListServerCertificatesResponse'
    { _lrsIsTruncated =
        Nothing,
      _lrsMarker = Nothing,
      _lrsResponseStatus = pResponseStatus_,
      _lrsServerCertificateMetadataList = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lrsIsTruncated :: Lens' ListServerCertificatesResponse (Maybe Bool)
lrsIsTruncated = lens _lrsIsTruncated (\s a -> s {_lrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lrsMarker :: Lens' ListServerCertificatesResponse (Maybe Text)
lrsMarker = lens _lrsMarker (\s a -> s {_lrsMarker = a})

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListServerCertificatesResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

-- | A list of server certificates.
lrsServerCertificateMetadataList :: Lens' ListServerCertificatesResponse [ServerCertificateMetadata]
lrsServerCertificateMetadataList = lens _lrsServerCertificateMetadataList (\s a -> s {_lrsServerCertificateMetadataList = a}) . _Coerce

instance NFData ListServerCertificatesResponse
