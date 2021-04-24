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
-- Module      : Network.AWS.ImportExport.CreateJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation initiates the process of scheduling an upload or download of your data. You include in the request a manifest that describes the data transfer specifics. The response to the request includes a job ID, which you can use in other operations, a signature that you use to identify your storage device, and the address where you should ship your storage device.
module Network.AWS.ImportExport.CreateJob
  ( -- * Creating a Request
    createJob,
    CreateJob,

    -- * Request Lenses
    cAPIVersion,
    cManifestAddendum,
    cJobType,
    cManifest,
    cValidateOnly,

    -- * Destructuring the Response
    createJobResponse,
    CreateJobResponse,

    -- * Response Lenses
    crsWarningMessage,
    crsJobType,
    crsArtifactList,
    crsSignature,
    crsSignatureFileContents,
    crsJobId,
    crsResponseStatus,
  )
where

import Network.AWS.ImportExport.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input structure for the CreateJob operation.
--
-- /See:/ 'createJob' smart constructor.
data CreateJob = CreateJob'
  { _cAPIVersion ::
      !(Maybe Text),
    _cManifestAddendum :: !(Maybe Text),
    _cJobType :: !JobType,
    _cManifest :: !Text,
    _cValidateOnly :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cAPIVersion' - Undocumented member.
--
-- * 'cManifestAddendum' - Undocumented member.
--
-- * 'cJobType' - Undocumented member.
--
-- * 'cManifest' - Undocumented member.
--
-- * 'cValidateOnly' - Undocumented member.
createJob ::
  -- | 'cJobType'
  JobType ->
  -- | 'cManifest'
  Text ->
  -- | 'cValidateOnly'
  Bool ->
  CreateJob
createJob pJobType_ pManifest_ pValidateOnly_ =
  CreateJob'
    { _cAPIVersion = Nothing,
      _cManifestAddendum = Nothing,
      _cJobType = pJobType_,
      _cManifest = pManifest_,
      _cValidateOnly = pValidateOnly_
    }

-- | Undocumented member.
cAPIVersion :: Lens' CreateJob (Maybe Text)
cAPIVersion = lens _cAPIVersion (\s a -> s {_cAPIVersion = a})

-- | Undocumented member.
cManifestAddendum :: Lens' CreateJob (Maybe Text)
cManifestAddendum = lens _cManifestAddendum (\s a -> s {_cManifestAddendum = a})

-- | Undocumented member.
cJobType :: Lens' CreateJob JobType
cJobType = lens _cJobType (\s a -> s {_cJobType = a})

-- | Undocumented member.
cManifest :: Lens' CreateJob Text
cManifest = lens _cManifest (\s a -> s {_cManifest = a})

-- | Undocumented member.
cValidateOnly :: Lens' CreateJob Bool
cValidateOnly = lens _cValidateOnly (\s a -> s {_cValidateOnly = a})

instance AWSRequest CreateJob where
  type Rs CreateJob = CreateJobResponse
  request = postQuery importExport
  response =
    receiveXMLWrapper
      "CreateJobResult"
      ( \s h x ->
          CreateJobResponse'
            <$> (x .@? "WarningMessage")
            <*> (x .@? "JobType")
            <*> ( x .@? "ArtifactList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Signature")
            <*> (x .@? "SignatureFileContents")
            <*> (x .@? "JobId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateJob

instance NFData CreateJob

instance ToHeaders CreateJob where
  toHeaders = const mempty

instance ToPath CreateJob where
  toPath = const "/"

instance ToQuery CreateJob where
  toQuery CreateJob' {..} =
    mconcat
      [ "Operation=CreateJob",
        "Action" =: ("CreateJob" :: ByteString),
        "Version" =: ("2010-06-01" :: ByteString),
        "APIVersion" =: _cAPIVersion,
        "ManifestAddendum" =: _cManifestAddendum,
        "JobType" =: _cJobType,
        "Manifest" =: _cManifest,
        "ValidateOnly" =: _cValidateOnly
      ]

-- | Output structure for the CreateJob operation.
--
-- /See:/ 'createJobResponse' smart constructor.
data CreateJobResponse = CreateJobResponse'
  { _crsWarningMessage ::
      !(Maybe Text),
    _crsJobType :: !(Maybe JobType),
    _crsArtifactList ::
      !(Maybe [Artifact]),
    _crsSignature :: !(Maybe Text),
    _crsSignatureFileContents ::
      !(Maybe Text),
    _crsJobId :: !(Maybe Text),
    _crsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsWarningMessage' - Undocumented member.
--
-- * 'crsJobType' - Undocumented member.
--
-- * 'crsArtifactList' - Undocumented member.
--
-- * 'crsSignature' - Undocumented member.
--
-- * 'crsSignatureFileContents' - Undocumented member.
--
-- * 'crsJobId' - Undocumented member.
--
-- * 'crsResponseStatus' - -- | The response status code.
createJobResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateJobResponse
createJobResponse pResponseStatus_ =
  CreateJobResponse'
    { _crsWarningMessage = Nothing,
      _crsJobType = Nothing,
      _crsArtifactList = Nothing,
      _crsSignature = Nothing,
      _crsSignatureFileContents = Nothing,
      _crsJobId = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
crsWarningMessage :: Lens' CreateJobResponse (Maybe Text)
crsWarningMessage = lens _crsWarningMessage (\s a -> s {_crsWarningMessage = a})

-- | Undocumented member.
crsJobType :: Lens' CreateJobResponse (Maybe JobType)
crsJobType = lens _crsJobType (\s a -> s {_crsJobType = a})

-- | Undocumented member.
crsArtifactList :: Lens' CreateJobResponse [Artifact]
crsArtifactList = lens _crsArtifactList (\s a -> s {_crsArtifactList = a}) . _Default . _Coerce

-- | Undocumented member.
crsSignature :: Lens' CreateJobResponse (Maybe Text)
crsSignature = lens _crsSignature (\s a -> s {_crsSignature = a})

-- | Undocumented member.
crsSignatureFileContents :: Lens' CreateJobResponse (Maybe Text)
crsSignatureFileContents = lens _crsSignatureFileContents (\s a -> s {_crsSignatureFileContents = a})

-- | Undocumented member.
crsJobId :: Lens' CreateJobResponse (Maybe Text)
crsJobId = lens _crsJobId (\s a -> s {_crsJobId = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateJobResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateJobResponse
