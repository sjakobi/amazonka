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
-- Module      : Network.AWS.IoTAnalytics.GetDatasetContent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the contents of a data set as presigned URIs.
module Network.AWS.IoTAnalytics.GetDatasetContent
  ( -- * Creating a Request
    getDatasetContent,
    GetDatasetContent,

    -- * Request Lenses
    gdcVersionId,
    gdcDatasetName,

    -- * Destructuring the Response
    getDatasetContentResponse,
    GetDatasetContentResponse,

    -- * Response Lenses
    gdcrrsStatus,
    gdcrrsTimestamp,
    gdcrrsEntries,
    gdcrrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDatasetContent' smart constructor.
data GetDatasetContent = GetDatasetContent'
  { _gdcVersionId ::
      !(Maybe Text),
    _gdcDatasetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDatasetContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcVersionId' - The version of the data set whose contents are retrieved. You can also use the strings "$LATEST" or "$LATEST_SUCCEEDED" to retrieve the contents of the latest or latest successfully completed data set. If not specified, "$LATEST_SUCCEEDED" is the default.
--
-- * 'gdcDatasetName' - The name of the data set whose contents are retrieved.
getDatasetContent ::
  -- | 'gdcDatasetName'
  Text ->
  GetDatasetContent
getDatasetContent pDatasetName_ =
  GetDatasetContent'
    { _gdcVersionId = Nothing,
      _gdcDatasetName = pDatasetName_
    }

-- | The version of the data set whose contents are retrieved. You can also use the strings "$LATEST" or "$LATEST_SUCCEEDED" to retrieve the contents of the latest or latest successfully completed data set. If not specified, "$LATEST_SUCCEEDED" is the default.
gdcVersionId :: Lens' GetDatasetContent (Maybe Text)
gdcVersionId = lens _gdcVersionId (\s a -> s {_gdcVersionId = a})

-- | The name of the data set whose contents are retrieved.
gdcDatasetName :: Lens' GetDatasetContent Text
gdcDatasetName = lens _gdcDatasetName (\s a -> s {_gdcDatasetName = a})

instance AWSRequest GetDatasetContent where
  type Rs GetDatasetContent = GetDatasetContentResponse
  request = get ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          GetDatasetContentResponse'
            <$> (x .?> "status")
            <*> (x .?> "timestamp")
            <*> (x .?> "entries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDatasetContent

instance NFData GetDatasetContent

instance ToHeaders GetDatasetContent where
  toHeaders = const mempty

instance ToPath GetDatasetContent where
  toPath GetDatasetContent' {..} =
    mconcat
      ["/datasets/", toBS _gdcDatasetName, "/content"]

instance ToQuery GetDatasetContent where
  toQuery GetDatasetContent' {..} =
    mconcat ["versionId" =: _gdcVersionId]

-- | /See:/ 'getDatasetContentResponse' smart constructor.
data GetDatasetContentResponse = GetDatasetContentResponse'
  { _gdcrrsStatus ::
      !( Maybe
           DatasetContentStatus
       ),
    _gdcrrsTimestamp ::
      !(Maybe POSIX),
    _gdcrrsEntries ::
      !( Maybe
           [DatasetEntry]
       ),
    _gdcrrsResponseStatus ::
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

-- | Creates a value of 'GetDatasetContentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcrrsStatus' - The status of the data set content.
--
-- * 'gdcrrsTimestamp' - The time when the request was made.
--
-- * 'gdcrrsEntries' - A list of @DatasetEntry@ objects.
--
-- * 'gdcrrsResponseStatus' - -- | The response status code.
getDatasetContentResponse ::
  -- | 'gdcrrsResponseStatus'
  Int ->
  GetDatasetContentResponse
getDatasetContentResponse pResponseStatus_ =
  GetDatasetContentResponse'
    { _gdcrrsStatus = Nothing,
      _gdcrrsTimestamp = Nothing,
      _gdcrrsEntries = Nothing,
      _gdcrrsResponseStatus = pResponseStatus_
    }

-- | The status of the data set content.
gdcrrsStatus :: Lens' GetDatasetContentResponse (Maybe DatasetContentStatus)
gdcrrsStatus = lens _gdcrrsStatus (\s a -> s {_gdcrrsStatus = a})

-- | The time when the request was made.
gdcrrsTimestamp :: Lens' GetDatasetContentResponse (Maybe UTCTime)
gdcrrsTimestamp = lens _gdcrrsTimestamp (\s a -> s {_gdcrrsTimestamp = a}) . mapping _Time

-- | A list of @DatasetEntry@ objects.
gdcrrsEntries :: Lens' GetDatasetContentResponse [DatasetEntry]
gdcrrsEntries = lens _gdcrrsEntries (\s a -> s {_gdcrrsEntries = a}) . _Default . _Coerce

-- | -- | The response status code.
gdcrrsResponseStatus :: Lens' GetDatasetContentResponse Int
gdcrrsResponseStatus = lens _gdcrrsResponseStatus (\s a -> s {_gdcrrsResponseStatus = a})

instance NFData GetDatasetContentResponse
