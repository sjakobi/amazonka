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
-- Module      : Network.AWS.ImportExport.GetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns information about a job, including where the job is in the processing pipeline, the status of the results, and the signature value associated with the job. You can only return information about jobs you own.
module Network.AWS.ImportExport.GetStatus
  ( -- * Creating a Request
    getStatus,
    GetStatus,

    -- * Request Lenses
    gsAPIVersion,
    gsJobId,

    -- * Destructuring the Response
    getStatusResponse,
    GetStatusResponse,

    -- * Response Lenses
    gsrrsTrackingNumber,
    gsrrsCurrentManifest,
    gsrrsErrorCount,
    gsrrsCreationDate,
    gsrrsLogBucket,
    gsrrsJobType,
    gsrrsArtifactList,
    gsrrsSignature,
    gsrrsCarrier,
    gsrrsProgressMessage,
    gsrrsLocationMessage,
    gsrrsLogKey,
    gsrrsSignatureFileContents,
    gsrrsProgressCode,
    gsrrsLocationCode,
    gsrrsJobId,
    gsrrsResponseStatus,
  )
where

import Network.AWS.ImportExport.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input structure for the GetStatus operation.
--
-- /See:/ 'getStatus' smart constructor.
data GetStatus = GetStatus'
  { _gsAPIVersion ::
      !(Maybe Text),
    _gsJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsAPIVersion' - Undocumented member.
--
-- * 'gsJobId' - Undocumented member.
getStatus ::
  -- | 'gsJobId'
  Text ->
  GetStatus
getStatus pJobId_ =
  GetStatus'
    { _gsAPIVersion = Nothing,
      _gsJobId = pJobId_
    }

-- | Undocumented member.
gsAPIVersion :: Lens' GetStatus (Maybe Text)
gsAPIVersion = lens _gsAPIVersion (\s a -> s {_gsAPIVersion = a})

-- | Undocumented member.
gsJobId :: Lens' GetStatus Text
gsJobId = lens _gsJobId (\s a -> s {_gsJobId = a})

instance AWSRequest GetStatus where
  type Rs GetStatus = GetStatusResponse
  request = postQuery importExport
  response =
    receiveXMLWrapper
      "GetStatusResult"
      ( \s h x ->
          GetStatusResponse'
            <$> (x .@? "TrackingNumber")
            <*> (x .@? "CurrentManifest")
            <*> (x .@? "ErrorCount")
            <*> (x .@? "CreationDate")
            <*> (x .@? "LogBucket")
            <*> (x .@? "JobType")
            <*> ( x .@? "ArtifactList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Signature")
            <*> (x .@? "Carrier")
            <*> (x .@? "ProgressMessage")
            <*> (x .@? "LocationMessage")
            <*> (x .@? "LogKey")
            <*> (x .@? "SignatureFileContents")
            <*> (x .@? "ProgressCode")
            <*> (x .@? "LocationCode")
            <*> (x .@? "JobId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetStatus

instance NFData GetStatus

instance ToHeaders GetStatus where
  toHeaders = const mempty

instance ToPath GetStatus where
  toPath = const "/"

instance ToQuery GetStatus where
  toQuery GetStatus' {..} =
    mconcat
      [ "Operation=GetStatus",
        "Action" =: ("GetStatus" :: ByteString),
        "Version" =: ("2010-06-01" :: ByteString),
        "APIVersion" =: _gsAPIVersion,
        "JobId" =: _gsJobId
      ]

-- | Output structure for the GetStatus operation.
--
-- /See:/ 'getStatusResponse' smart constructor.
data GetStatusResponse = GetStatusResponse'
  { _gsrrsTrackingNumber ::
      !(Maybe Text),
    _gsrrsCurrentManifest ::
      !(Maybe Text),
    _gsrrsErrorCount :: !(Maybe Int),
    _gsrrsCreationDate ::
      !(Maybe ISO8601),
    _gsrrsLogBucket :: !(Maybe Text),
    _gsrrsJobType :: !(Maybe JobType),
    _gsrrsArtifactList ::
      !(Maybe [Artifact]),
    _gsrrsSignature :: !(Maybe Text),
    _gsrrsCarrier :: !(Maybe Text),
    _gsrrsProgressMessage ::
      !(Maybe Text),
    _gsrrsLocationMessage ::
      !(Maybe Text),
    _gsrrsLogKey :: !(Maybe Text),
    _gsrrsSignatureFileContents ::
      !(Maybe Text),
    _gsrrsProgressCode :: !(Maybe Text),
    _gsrrsLocationCode :: !(Maybe Text),
    _gsrrsJobId :: !(Maybe Text),
    _gsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrrsTrackingNumber' - Undocumented member.
--
-- * 'gsrrsCurrentManifest' - Undocumented member.
--
-- * 'gsrrsErrorCount' - Undocumented member.
--
-- * 'gsrrsCreationDate' - Undocumented member.
--
-- * 'gsrrsLogBucket' - Undocumented member.
--
-- * 'gsrrsJobType' - Undocumented member.
--
-- * 'gsrrsArtifactList' - Undocumented member.
--
-- * 'gsrrsSignature' - Undocumented member.
--
-- * 'gsrrsCarrier' - Undocumented member.
--
-- * 'gsrrsProgressMessage' - Undocumented member.
--
-- * 'gsrrsLocationMessage' - Undocumented member.
--
-- * 'gsrrsLogKey' - Undocumented member.
--
-- * 'gsrrsSignatureFileContents' - Undocumented member.
--
-- * 'gsrrsProgressCode' - Undocumented member.
--
-- * 'gsrrsLocationCode' - Undocumented member.
--
-- * 'gsrrsJobId' - Undocumented member.
--
-- * 'gsrrsResponseStatus' - -- | The response status code.
getStatusResponse ::
  -- | 'gsrrsResponseStatus'
  Int ->
  GetStatusResponse
getStatusResponse pResponseStatus_ =
  GetStatusResponse'
    { _gsrrsTrackingNumber = Nothing,
      _gsrrsCurrentManifest = Nothing,
      _gsrrsErrorCount = Nothing,
      _gsrrsCreationDate = Nothing,
      _gsrrsLogBucket = Nothing,
      _gsrrsJobType = Nothing,
      _gsrrsArtifactList = Nothing,
      _gsrrsSignature = Nothing,
      _gsrrsCarrier = Nothing,
      _gsrrsProgressMessage = Nothing,
      _gsrrsLocationMessage = Nothing,
      _gsrrsLogKey = Nothing,
      _gsrrsSignatureFileContents = Nothing,
      _gsrrsProgressCode = Nothing,
      _gsrrsLocationCode = Nothing,
      _gsrrsJobId = Nothing,
      _gsrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
gsrrsTrackingNumber :: Lens' GetStatusResponse (Maybe Text)
gsrrsTrackingNumber = lens _gsrrsTrackingNumber (\s a -> s {_gsrrsTrackingNumber = a})

-- | Undocumented member.
gsrrsCurrentManifest :: Lens' GetStatusResponse (Maybe Text)
gsrrsCurrentManifest = lens _gsrrsCurrentManifest (\s a -> s {_gsrrsCurrentManifest = a})

-- | Undocumented member.
gsrrsErrorCount :: Lens' GetStatusResponse (Maybe Int)
gsrrsErrorCount = lens _gsrrsErrorCount (\s a -> s {_gsrrsErrorCount = a})

-- | Undocumented member.
gsrrsCreationDate :: Lens' GetStatusResponse (Maybe UTCTime)
gsrrsCreationDate = lens _gsrrsCreationDate (\s a -> s {_gsrrsCreationDate = a}) . mapping _Time

-- | Undocumented member.
gsrrsLogBucket :: Lens' GetStatusResponse (Maybe Text)
gsrrsLogBucket = lens _gsrrsLogBucket (\s a -> s {_gsrrsLogBucket = a})

-- | Undocumented member.
gsrrsJobType :: Lens' GetStatusResponse (Maybe JobType)
gsrrsJobType = lens _gsrrsJobType (\s a -> s {_gsrrsJobType = a})

-- | Undocumented member.
gsrrsArtifactList :: Lens' GetStatusResponse [Artifact]
gsrrsArtifactList = lens _gsrrsArtifactList (\s a -> s {_gsrrsArtifactList = a}) . _Default . _Coerce

-- | Undocumented member.
gsrrsSignature :: Lens' GetStatusResponse (Maybe Text)
gsrrsSignature = lens _gsrrsSignature (\s a -> s {_gsrrsSignature = a})

-- | Undocumented member.
gsrrsCarrier :: Lens' GetStatusResponse (Maybe Text)
gsrrsCarrier = lens _gsrrsCarrier (\s a -> s {_gsrrsCarrier = a})

-- | Undocumented member.
gsrrsProgressMessage :: Lens' GetStatusResponse (Maybe Text)
gsrrsProgressMessage = lens _gsrrsProgressMessage (\s a -> s {_gsrrsProgressMessage = a})

-- | Undocumented member.
gsrrsLocationMessage :: Lens' GetStatusResponse (Maybe Text)
gsrrsLocationMessage = lens _gsrrsLocationMessage (\s a -> s {_gsrrsLocationMessage = a})

-- | Undocumented member.
gsrrsLogKey :: Lens' GetStatusResponse (Maybe Text)
gsrrsLogKey = lens _gsrrsLogKey (\s a -> s {_gsrrsLogKey = a})

-- | Undocumented member.
gsrrsSignatureFileContents :: Lens' GetStatusResponse (Maybe Text)
gsrrsSignatureFileContents = lens _gsrrsSignatureFileContents (\s a -> s {_gsrrsSignatureFileContents = a})

-- | Undocumented member.
gsrrsProgressCode :: Lens' GetStatusResponse (Maybe Text)
gsrrsProgressCode = lens _gsrrsProgressCode (\s a -> s {_gsrrsProgressCode = a})

-- | Undocumented member.
gsrrsLocationCode :: Lens' GetStatusResponse (Maybe Text)
gsrrsLocationCode = lens _gsrrsLocationCode (\s a -> s {_gsrrsLocationCode = a})

-- | Undocumented member.
gsrrsJobId :: Lens' GetStatusResponse (Maybe Text)
gsrrsJobId = lens _gsrrsJobId (\s a -> s {_gsrrsJobId = a})

-- | -- | The response status code.
gsrrsResponseStatus :: Lens' GetStatusResponse Int
gsrrsResponseStatus = lens _gsrrsResponseStatus (\s a -> s {_gsrrsResponseStatus = a})

instance NFData GetStatusResponse
