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
-- Module      : Network.AWS.LexModels.GetExport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the contents of a Amazon Lex resource in a specified format.
module Network.AWS.LexModels.GetExport
  ( -- * Creating a Request
    getExport,
    GetExport,

    -- * Request Lenses
    geName,
    geVersion,
    geResourceType,
    geExportType,

    -- * Destructuring the Response
    getExportResponse,
    GetExportResponse,

    -- * Response Lenses
    gerrsExportStatus,
    gerrsVersion,
    gerrsResourceType,
    gerrsName,
    gerrsExportType,
    gerrsFailureReason,
    gerrsUrl,
    gerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getExport' smart constructor.
data GetExport = GetExport'
  { _geName :: !Text,
    _geVersion :: !Text,
    _geResourceType :: !ResourceType,
    _geExportType :: !ExportType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'geName' - The name of the bot to export.
--
-- * 'geVersion' - The version of the bot to export.
--
-- * 'geResourceType' - The type of resource to export.
--
-- * 'geExportType' - The format of the exported data.
getExport ::
  -- | 'geName'
  Text ->
  -- | 'geVersion'
  Text ->
  -- | 'geResourceType'
  ResourceType ->
  -- | 'geExportType'
  ExportType ->
  GetExport
getExport
  pName_
  pVersion_
  pResourceType_
  pExportType_ =
    GetExport'
      { _geName = pName_,
        _geVersion = pVersion_,
        _geResourceType = pResourceType_,
        _geExportType = pExportType_
      }

-- | The name of the bot to export.
geName :: Lens' GetExport Text
geName = lens _geName (\s a -> s {_geName = a})

-- | The version of the bot to export.
geVersion :: Lens' GetExport Text
geVersion = lens _geVersion (\s a -> s {_geVersion = a})

-- | The type of resource to export.
geResourceType :: Lens' GetExport ResourceType
geResourceType = lens _geResourceType (\s a -> s {_geResourceType = a})

-- | The format of the exported data.
geExportType :: Lens' GetExport ExportType
geExportType = lens _geExportType (\s a -> s {_geExportType = a})

instance AWSRequest GetExport where
  type Rs GetExport = GetExportResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetExportResponse'
            <$> (x .?> "exportStatus")
            <*> (x .?> "version")
            <*> (x .?> "resourceType")
            <*> (x .?> "name")
            <*> (x .?> "exportType")
            <*> (x .?> "failureReason")
            <*> (x .?> "url")
            <*> (pure (fromEnum s))
      )

instance Hashable GetExport

instance NFData GetExport

instance ToHeaders GetExport where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetExport where
  toPath = const "/exports/"

instance ToQuery GetExport where
  toQuery GetExport' {..} =
    mconcat
      [ "name" =: _geName,
        "version" =: _geVersion,
        "resourceType" =: _geResourceType,
        "exportType" =: _geExportType
      ]

-- | /See:/ 'getExportResponse' smart constructor.
data GetExportResponse = GetExportResponse'
  { _gerrsExportStatus ::
      !(Maybe ExportStatus),
    _gerrsVersion :: !(Maybe Text),
    _gerrsResourceType ::
      !(Maybe ResourceType),
    _gerrsName :: !(Maybe Text),
    _gerrsExportType ::
      !(Maybe ExportType),
    _gerrsFailureReason ::
      !(Maybe Text),
    _gerrsUrl :: !(Maybe Text),
    _gerrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetExportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gerrsExportStatus' - The status of the export.      * @IN_PROGRESS@ - The export is in progress.     * @READY@ - The export is complete.     * @FAILED@ - The export could not be completed.
--
-- * 'gerrsVersion' - The version of the bot being exported.
--
-- * 'gerrsResourceType' - The type of the exported resource.
--
-- * 'gerrsName' - The name of the bot being exported.
--
-- * 'gerrsExportType' - The format of the exported data.
--
-- * 'gerrsFailureReason' - If @status@ is @FAILED@ , Amazon Lex provides the reason that it failed to export the resource.
--
-- * 'gerrsUrl' - An S3 pre-signed URL that provides the location of the exported resource. The exported resource is a ZIP archive that contains the exported resource in JSON format. The structure of the archive may change. Your code should not rely on the archive structure.
--
-- * 'gerrsResponseStatus' - -- | The response status code.
getExportResponse ::
  -- | 'gerrsResponseStatus'
  Int ->
  GetExportResponse
getExportResponse pResponseStatus_ =
  GetExportResponse'
    { _gerrsExportStatus = Nothing,
      _gerrsVersion = Nothing,
      _gerrsResourceType = Nothing,
      _gerrsName = Nothing,
      _gerrsExportType = Nothing,
      _gerrsFailureReason = Nothing,
      _gerrsUrl = Nothing,
      _gerrsResponseStatus = pResponseStatus_
    }

-- | The status of the export.      * @IN_PROGRESS@ - The export is in progress.     * @READY@ - The export is complete.     * @FAILED@ - The export could not be completed.
gerrsExportStatus :: Lens' GetExportResponse (Maybe ExportStatus)
gerrsExportStatus = lens _gerrsExportStatus (\s a -> s {_gerrsExportStatus = a})

-- | The version of the bot being exported.
gerrsVersion :: Lens' GetExportResponse (Maybe Text)
gerrsVersion = lens _gerrsVersion (\s a -> s {_gerrsVersion = a})

-- | The type of the exported resource.
gerrsResourceType :: Lens' GetExportResponse (Maybe ResourceType)
gerrsResourceType = lens _gerrsResourceType (\s a -> s {_gerrsResourceType = a})

-- | The name of the bot being exported.
gerrsName :: Lens' GetExportResponse (Maybe Text)
gerrsName = lens _gerrsName (\s a -> s {_gerrsName = a})

-- | The format of the exported data.
gerrsExportType :: Lens' GetExportResponse (Maybe ExportType)
gerrsExportType = lens _gerrsExportType (\s a -> s {_gerrsExportType = a})

-- | If @status@ is @FAILED@ , Amazon Lex provides the reason that it failed to export the resource.
gerrsFailureReason :: Lens' GetExportResponse (Maybe Text)
gerrsFailureReason = lens _gerrsFailureReason (\s a -> s {_gerrsFailureReason = a})

-- | An S3 pre-signed URL that provides the location of the exported resource. The exported resource is a ZIP archive that contains the exported resource in JSON format. The structure of the archive may change. Your code should not rely on the archive structure.
gerrsUrl :: Lens' GetExportResponse (Maybe Text)
gerrsUrl = lens _gerrsUrl (\s a -> s {_gerrsUrl = a})

-- | -- | The response status code.
gerrsResponseStatus :: Lens' GetExportResponse Int
gerrsResponseStatus = lens _gerrsResponseStatus (\s a -> s {_gerrsResponseStatus = a})

instance NFData GetExportResponse
