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
-- Module      : Network.AWS.Glacier.ListMultipartUploads
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists in-progress multipart uploads for the specified vault. An in-progress multipart upload is a multipart upload that has been initiated by an 'InitiateMultipartUpload' request, but has not yet been completed or aborted. The list returned in the List Multipart Upload response has no guaranteed order.
--
--
-- The List Multipart Uploads operation supports pagination. By default, this operation returns up to 50 multipart uploads in the response. You should always check the response for a @marker@ at which to continue the list; if there are no more items the @marker@ is @null@ . To return a list of multipart uploads that begins at a specific upload, set the @marker@ request parameter to the value you obtained from a previous List Multipart Upload request. You can also limit the number of uploads returned in the response by specifying the @limit@ parameter in the request.
--
-- Note the difference between this operation and listing parts ('ListParts' ). The List Multipart Uploads operation lists all multipart uploads for a vault and does not require a multipart upload ID. The List Parts operation requires a multipart upload ID since parts are associated with a single upload.
--
-- An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)> .
--
-- For conceptual information and the underlying REST API, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html Working with Archives in Amazon S3 Glacier> and <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html List Multipart Uploads > in the /Amazon Glacier Developer Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.Glacier.ListMultipartUploads
  ( -- * Creating a Request
    listMultipartUploads,
    ListMultipartUploads,

    -- * Request Lenses
    lmuLimit,
    lmuMarker,
    lmuAccountId,
    lmuVaultName,

    -- * Destructuring the Response
    listMultipartUploadsResponse,
    ListMultipartUploadsResponse,

    -- * Response Lenses
    lmurrsUploadsList,
    lmurrsMarker,
    lmurrsResponseStatus,
  )
where

import Network.AWS.Glacier.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Provides options for retrieving list of in-progress multipart uploads for an Amazon Glacier vault.
--
--
--
-- /See:/ 'listMultipartUploads' smart constructor.
data ListMultipartUploads = ListMultipartUploads'
  { _lmuLimit ::
      !(Maybe Text),
    _lmuMarker :: !(Maybe Text),
    _lmuAccountId :: !Text,
    _lmuVaultName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMultipartUploads' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmuLimit' - Specifies the maximum number of uploads returned in the response body. If this value is not specified, the List Uploads operation returns up to 50 uploads.
--
-- * 'lmuMarker' - An opaque string used for pagination. This value specifies the upload at which the listing of uploads should begin. Get the marker value from a previous List Uploads response. You need only include the marker if you are continuing the pagination of results started in a previous List Uploads request.
--
-- * 'lmuAccountId' - The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
--
-- * 'lmuVaultName' - The name of the vault.
listMultipartUploads ::
  -- | 'lmuAccountId'
  Text ->
  -- | 'lmuVaultName'
  Text ->
  ListMultipartUploads
listMultipartUploads pAccountId_ pVaultName_ =
  ListMultipartUploads'
    { _lmuLimit = Nothing,
      _lmuMarker = Nothing,
      _lmuAccountId = pAccountId_,
      _lmuVaultName = pVaultName_
    }

-- | Specifies the maximum number of uploads returned in the response body. If this value is not specified, the List Uploads operation returns up to 50 uploads.
lmuLimit :: Lens' ListMultipartUploads (Maybe Text)
lmuLimit = lens _lmuLimit (\s a -> s {_lmuLimit = a})

-- | An opaque string used for pagination. This value specifies the upload at which the listing of uploads should begin. Get the marker value from a previous List Uploads response. You need only include the marker if you are continuing the pagination of results started in a previous List Uploads request.
lmuMarker :: Lens' ListMultipartUploads (Maybe Text)
lmuMarker = lens _lmuMarker (\s a -> s {_lmuMarker = a})

-- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
lmuAccountId :: Lens' ListMultipartUploads Text
lmuAccountId = lens _lmuAccountId (\s a -> s {_lmuAccountId = a})

-- | The name of the vault.
lmuVaultName :: Lens' ListMultipartUploads Text
lmuVaultName = lens _lmuVaultName (\s a -> s {_lmuVaultName = a})

instance AWSPager ListMultipartUploads where
  page rq rs
    | stop (rs ^. lmurrsMarker) = Nothing
    | stop (rs ^. lmurrsUploadsList) = Nothing
    | otherwise =
      Just $ rq & lmuMarker .~ rs ^. lmurrsMarker

instance AWSRequest ListMultipartUploads where
  type
    Rs ListMultipartUploads =
      ListMultipartUploadsResponse
  request = get glacier
  response =
    receiveJSON
      ( \s h x ->
          ListMultipartUploadsResponse'
            <$> (x .?> "UploadsList" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListMultipartUploads

instance NFData ListMultipartUploads

instance ToHeaders ListMultipartUploads where
  toHeaders = const mempty

instance ToPath ListMultipartUploads where
  toPath ListMultipartUploads' {..} =
    mconcat
      [ "/",
        toBS _lmuAccountId,
        "/vaults/",
        toBS _lmuVaultName,
        "/multipart-uploads"
      ]

instance ToQuery ListMultipartUploads where
  toQuery ListMultipartUploads' {..} =
    mconcat
      ["limit" =: _lmuLimit, "marker" =: _lmuMarker]

-- | Contains the Amazon S3 Glacier response to your request.
--
--
--
-- /See:/ 'listMultipartUploadsResponse' smart constructor.
data ListMultipartUploadsResponse = ListMultipartUploadsResponse'
  { _lmurrsUploadsList ::
      !( Maybe
           [UploadListElement]
       ),
    _lmurrsMarker ::
      !(Maybe Text),
    _lmurrsResponseStatus ::
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

-- | Creates a value of 'ListMultipartUploadsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmurrsUploadsList' - A list of in-progress multipart uploads.
--
-- * 'lmurrsMarker' - An opaque string that represents where to continue pagination of the results. You use the marker in a new List Multipart Uploads request to obtain more uploads in the list. If there are no more uploads, this value is @null@ .
--
-- * 'lmurrsResponseStatus' - -- | The response status code.
listMultipartUploadsResponse ::
  -- | 'lmurrsResponseStatus'
  Int ->
  ListMultipartUploadsResponse
listMultipartUploadsResponse pResponseStatus_ =
  ListMultipartUploadsResponse'
    { _lmurrsUploadsList =
        Nothing,
      _lmurrsMarker = Nothing,
      _lmurrsResponseStatus = pResponseStatus_
    }

-- | A list of in-progress multipart uploads.
lmurrsUploadsList :: Lens' ListMultipartUploadsResponse [UploadListElement]
lmurrsUploadsList = lens _lmurrsUploadsList (\s a -> s {_lmurrsUploadsList = a}) . _Default . _Coerce

-- | An opaque string that represents where to continue pagination of the results. You use the marker in a new List Multipart Uploads request to obtain more uploads in the list. If there are no more uploads, this value is @null@ .
lmurrsMarker :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmurrsMarker = lens _lmurrsMarker (\s a -> s {_lmurrsMarker = a})

-- | -- | The response status code.
lmurrsResponseStatus :: Lens' ListMultipartUploadsResponse Int
lmurrsResponseStatus = lens _lmurrsResponseStatus (\s a -> s {_lmurrsResponseStatus = a})

instance NFData ListMultipartUploadsResponse
