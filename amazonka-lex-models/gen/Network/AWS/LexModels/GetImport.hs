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
-- Module      : Network.AWS.LexModels.GetImport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about an import job started with the @StartImport@ operation.
module Network.AWS.LexModels.GetImport
  ( -- * Creating a Request
    getImport,
    GetImport,

    -- * Request Lenses
    giImportId,

    -- * Destructuring the Response
    getImportResponse,
    GetImportResponse,

    -- * Response Lenses
    girirsCreatedDate,
    girirsMergeStrategy,
    girirsImportId,
    girirsResourceType,
    girirsName,
    girirsFailureReason,
    girirsImportStatus,
    girirsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getImport' smart constructor.
newtype GetImport = GetImport' {_giImportId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giImportId' - The identifier of the import job information to return.
getImport ::
  -- | 'giImportId'
  Text ->
  GetImport
getImport pImportId_ =
  GetImport' {_giImportId = pImportId_}

-- | The identifier of the import job information to return.
giImportId :: Lens' GetImport Text
giImportId = lens _giImportId (\s a -> s {_giImportId = a})

instance AWSRequest GetImport where
  type Rs GetImport = GetImportResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetImportResponse'
            <$> (x .?> "createdDate")
            <*> (x .?> "mergeStrategy")
            <*> (x .?> "importId")
            <*> (x .?> "resourceType")
            <*> (x .?> "name")
            <*> (x .?> "failureReason" .!@ mempty)
            <*> (x .?> "importStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable GetImport

instance NFData GetImport

instance ToHeaders GetImport where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetImport where
  toPath GetImport' {..} =
    mconcat ["/imports/", toBS _giImportId]

instance ToQuery GetImport where
  toQuery = const mempty

-- | /See:/ 'getImportResponse' smart constructor.
data GetImportResponse = GetImportResponse'
  { _girirsCreatedDate ::
      !(Maybe POSIX),
    _girirsMergeStrategy ::
      !(Maybe MergeStrategy),
    _girirsImportId :: !(Maybe Text),
    _girirsResourceType ::
      !(Maybe ResourceType),
    _girirsName :: !(Maybe Text),
    _girirsFailureReason ::
      !(Maybe [Text]),
    _girirsImportStatus ::
      !(Maybe ImportStatus),
    _girirsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetImportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'girirsCreatedDate' - A timestamp for the date and time that the import job was created.
--
-- * 'girirsMergeStrategy' - The action taken when there was a conflict between an existing resource and a resource in the import file.
--
-- * 'girirsImportId' - The identifier for the specific import job.
--
-- * 'girirsResourceType' - The type of resource imported.
--
-- * 'girirsName' - The name given to the import job.
--
-- * 'girirsFailureReason' - A string that describes why an import job failed to complete.
--
-- * 'girirsImportStatus' - The status of the import job. If the status is @FAILED@ , you can get the reason for the failure from the @failureReason@ field.
--
-- * 'girirsResponseStatus' - -- | The response status code.
getImportResponse ::
  -- | 'girirsResponseStatus'
  Int ->
  GetImportResponse
getImportResponse pResponseStatus_ =
  GetImportResponse'
    { _girirsCreatedDate = Nothing,
      _girirsMergeStrategy = Nothing,
      _girirsImportId = Nothing,
      _girirsResourceType = Nothing,
      _girirsName = Nothing,
      _girirsFailureReason = Nothing,
      _girirsImportStatus = Nothing,
      _girirsResponseStatus = pResponseStatus_
    }

-- | A timestamp for the date and time that the import job was created.
girirsCreatedDate :: Lens' GetImportResponse (Maybe UTCTime)
girirsCreatedDate = lens _girirsCreatedDate (\s a -> s {_girirsCreatedDate = a}) . mapping _Time

-- | The action taken when there was a conflict between an existing resource and a resource in the import file.
girirsMergeStrategy :: Lens' GetImportResponse (Maybe MergeStrategy)
girirsMergeStrategy = lens _girirsMergeStrategy (\s a -> s {_girirsMergeStrategy = a})

-- | The identifier for the specific import job.
girirsImportId :: Lens' GetImportResponse (Maybe Text)
girirsImportId = lens _girirsImportId (\s a -> s {_girirsImportId = a})

-- | The type of resource imported.
girirsResourceType :: Lens' GetImportResponse (Maybe ResourceType)
girirsResourceType = lens _girirsResourceType (\s a -> s {_girirsResourceType = a})

-- | The name given to the import job.
girirsName :: Lens' GetImportResponse (Maybe Text)
girirsName = lens _girirsName (\s a -> s {_girirsName = a})

-- | A string that describes why an import job failed to complete.
girirsFailureReason :: Lens' GetImportResponse [Text]
girirsFailureReason = lens _girirsFailureReason (\s a -> s {_girirsFailureReason = a}) . _Default . _Coerce

-- | The status of the import job. If the status is @FAILED@ , you can get the reason for the failure from the @failureReason@ field.
girirsImportStatus :: Lens' GetImportResponse (Maybe ImportStatus)
girirsImportStatus = lens _girirsImportStatus (\s a -> s {_girirsImportStatus = a})

-- | -- | The response status code.
girirsResponseStatus :: Lens' GetImportResponse Int
girirsResponseStatus = lens _girirsResponseStatus (\s a -> s {_girirsResponseStatus = a})

instance NFData GetImportResponse
