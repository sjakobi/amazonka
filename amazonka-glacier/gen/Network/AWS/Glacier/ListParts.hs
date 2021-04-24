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
-- Module      : Network.AWS.Glacier.ListParts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists the parts of an archive that have been uploaded in a specific multipart upload. You can make this request at any time during an in-progress multipart upload before you complete the upload (see 'CompleteMultipartUpload' . List Parts returns an error for completed uploads. The list returned in the List Parts response is sorted by part range.
--
--
-- The List Parts operation supports pagination. By default, this operation returns up to 50 uploaded parts in the response. You should always check the response for a @marker@ at which to continue the list; if there are no more items the @marker@ is @null@ . To return a list of parts that begins at a specific part, set the @marker@ request parameter to the value you obtained from a previous List Parts request. You can also limit the number of parts returned in the response by specifying the @limit@ parameter in the request.
--
-- An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)> .
--
-- For conceptual information and the underlying REST API, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html Working with Archives in Amazon S3 Glacier> and <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html List Parts> in the /Amazon Glacier Developer Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.Glacier.ListParts
  ( -- * Creating a Request
    listParts,
    ListParts,

    -- * Request Lenses
    lpLimit,
    lpMarker,
    lpAccountId,
    lpVaultName,
    lpUploadId,

    -- * Destructuring the Response
    listPartsResponse,
    ListPartsResponse,

    -- * Response Lenses
    lprrsPartSizeInBytes,
    lprrsCreationDate,
    lprrsVaultARN,
    lprrsArchiveDescription,
    lprrsParts,
    lprrsMultipartUploadId,
    lprrsMarker,
    lprrsResponseStatus,
  )
where

import Network.AWS.Glacier.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Provides options for retrieving a list of parts of an archive that have been uploaded in a specific multipart upload.
--
--
--
-- /See:/ 'listParts' smart constructor.
data ListParts = ListParts'
  { _lpLimit ::
      !(Maybe Text),
    _lpMarker :: !(Maybe Text),
    _lpAccountId :: !Text,
    _lpVaultName :: !Text,
    _lpUploadId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListParts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpLimit' - The maximum number of parts to be returned. The default limit is 50. The number of parts returned might be fewer than the specified limit, but the number of returned parts never exceeds the limit.
--
-- * 'lpMarker' - An opaque string used for pagination. This value specifies the part at which the listing of parts should begin. Get the marker value from the response of a previous List Parts response. You need only include the marker if you are continuing the pagination of results started in a previous List Parts request.
--
-- * 'lpAccountId' - The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
--
-- * 'lpVaultName' - The name of the vault.
--
-- * 'lpUploadId' - The upload ID of the multipart upload.
listParts ::
  -- | 'lpAccountId'
  Text ->
  -- | 'lpVaultName'
  Text ->
  -- | 'lpUploadId'
  Text ->
  ListParts
listParts pAccountId_ pVaultName_ pUploadId_ =
  ListParts'
    { _lpLimit = Nothing,
      _lpMarker = Nothing,
      _lpAccountId = pAccountId_,
      _lpVaultName = pVaultName_,
      _lpUploadId = pUploadId_
    }

-- | The maximum number of parts to be returned. The default limit is 50. The number of parts returned might be fewer than the specified limit, but the number of returned parts never exceeds the limit.
lpLimit :: Lens' ListParts (Maybe Text)
lpLimit = lens _lpLimit (\s a -> s {_lpLimit = a})

-- | An opaque string used for pagination. This value specifies the part at which the listing of parts should begin. Get the marker value from the response of a previous List Parts response. You need only include the marker if you are continuing the pagination of results started in a previous List Parts request.
lpMarker :: Lens' ListParts (Maybe Text)
lpMarker = lens _lpMarker (\s a -> s {_lpMarker = a})

-- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
lpAccountId :: Lens' ListParts Text
lpAccountId = lens _lpAccountId (\s a -> s {_lpAccountId = a})

-- | The name of the vault.
lpVaultName :: Lens' ListParts Text
lpVaultName = lens _lpVaultName (\s a -> s {_lpVaultName = a})

-- | The upload ID of the multipart upload.
lpUploadId :: Lens' ListParts Text
lpUploadId = lens _lpUploadId (\s a -> s {_lpUploadId = a})

instance AWSPager ListParts where
  page rq rs
    | stop (rs ^. lprrsMarker) = Nothing
    | stop (rs ^. lprrsParts) = Nothing
    | otherwise =
      Just $ rq & lpMarker .~ rs ^. lprrsMarker

instance AWSRequest ListParts where
  type Rs ListParts = ListPartsResponse
  request = get glacier
  response =
    receiveJSON
      ( \s h x ->
          ListPartsResponse'
            <$> (x .?> "PartSizeInBytes")
            <*> (x .?> "CreationDate")
            <*> (x .?> "VaultARN")
            <*> (x .?> "ArchiveDescription")
            <*> (x .?> "Parts" .!@ mempty)
            <*> (x .?> "MultipartUploadId")
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListParts

instance NFData ListParts

instance ToHeaders ListParts where
  toHeaders = const mempty

instance ToPath ListParts where
  toPath ListParts' {..} =
    mconcat
      [ "/",
        toBS _lpAccountId,
        "/vaults/",
        toBS _lpVaultName,
        "/multipart-uploads/",
        toBS _lpUploadId
      ]

instance ToQuery ListParts where
  toQuery ListParts' {..} =
    mconcat
      ["limit" =: _lpLimit, "marker" =: _lpMarker]

-- | Contains the Amazon S3 Glacier response to your request.
--
--
--
-- /See:/ 'listPartsResponse' smart constructor.
data ListPartsResponse = ListPartsResponse'
  { _lprrsPartSizeInBytes ::
      !(Maybe Integer),
    _lprrsCreationDate :: !(Maybe Text),
    _lprrsVaultARN :: !(Maybe Text),
    _lprrsArchiveDescription ::
      !(Maybe Text),
    _lprrsParts ::
      !(Maybe [PartListElement]),
    _lprrsMultipartUploadId ::
      !(Maybe Text),
    _lprrsMarker :: !(Maybe Text),
    _lprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPartsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsPartSizeInBytes' - The part size in bytes. This is the same value that you specified in the Initiate Multipart Upload request.
--
-- * 'lprrsCreationDate' - The UTC time at which the multipart upload was initiated.
--
-- * 'lprrsVaultARN' - The Amazon Resource Name (ARN) of the vault to which the multipart upload was initiated.
--
-- * 'lprrsArchiveDescription' - The description of the archive that was specified in the Initiate Multipart Upload request.
--
-- * 'lprrsParts' - A list of the part sizes of the multipart upload. Each object in the array contains a @RangeBytes@ and @sha256-tree-hash@ name/value pair.
--
-- * 'lprrsMultipartUploadId' - The ID of the upload to which the parts are associated.
--
-- * 'lprrsMarker' - An opaque string that represents where to continue pagination of the results. You use the marker in a new List Parts request to obtain more jobs in the list. If there are no more parts, this value is @null@ .
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPartsResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPartsResponse
listPartsResponse pResponseStatus_ =
  ListPartsResponse'
    { _lprrsPartSizeInBytes = Nothing,
      _lprrsCreationDate = Nothing,
      _lprrsVaultARN = Nothing,
      _lprrsArchiveDescription = Nothing,
      _lprrsParts = Nothing,
      _lprrsMultipartUploadId = Nothing,
      _lprrsMarker = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | The part size in bytes. This is the same value that you specified in the Initiate Multipart Upload request.
lprrsPartSizeInBytes :: Lens' ListPartsResponse (Maybe Integer)
lprrsPartSizeInBytes = lens _lprrsPartSizeInBytes (\s a -> s {_lprrsPartSizeInBytes = a})

-- | The UTC time at which the multipart upload was initiated.
lprrsCreationDate :: Lens' ListPartsResponse (Maybe Text)
lprrsCreationDate = lens _lprrsCreationDate (\s a -> s {_lprrsCreationDate = a})

-- | The Amazon Resource Name (ARN) of the vault to which the multipart upload was initiated.
lprrsVaultARN :: Lens' ListPartsResponse (Maybe Text)
lprrsVaultARN = lens _lprrsVaultARN (\s a -> s {_lprrsVaultARN = a})

-- | The description of the archive that was specified in the Initiate Multipart Upload request.
lprrsArchiveDescription :: Lens' ListPartsResponse (Maybe Text)
lprrsArchiveDescription = lens _lprrsArchiveDescription (\s a -> s {_lprrsArchiveDescription = a})

-- | A list of the part sizes of the multipart upload. Each object in the array contains a @RangeBytes@ and @sha256-tree-hash@ name/value pair.
lprrsParts :: Lens' ListPartsResponse [PartListElement]
lprrsParts = lens _lprrsParts (\s a -> s {_lprrsParts = a}) . _Default . _Coerce

-- | The ID of the upload to which the parts are associated.
lprrsMultipartUploadId :: Lens' ListPartsResponse (Maybe Text)
lprrsMultipartUploadId = lens _lprrsMultipartUploadId (\s a -> s {_lprrsMultipartUploadId = a})

-- | An opaque string that represents where to continue pagination of the results. You use the marker in a new List Parts request to obtain more jobs in the list. If there are no more parts, this value is @null@ .
lprrsMarker :: Lens' ListPartsResponse (Maybe Text)
lprrsMarker = lens _lprrsMarker (\s a -> s {_lprrsMarker = a})

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPartsResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPartsResponse
