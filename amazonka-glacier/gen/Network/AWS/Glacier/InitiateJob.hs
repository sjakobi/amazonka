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
-- Module      : Network.AWS.Glacier.InitiateJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation initiates a job of the specified type, which can be a select, an archival retrieval, or a vault retrieval. For more information about using this operation, see the documentation for the underlying REST API <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html Initiate a Job> .
module Network.AWS.Glacier.InitiateJob
  ( -- * Creating a Request
    initiateJob,
    InitiateJob,

    -- * Request Lenses
    ijJobParameters,
    ijAccountId,
    ijVaultName,

    -- * Destructuring the Response
    initiateJobResponse,
    InitiateJobResponse,

    -- * Response Lenses
    ijrrsJobOutputPath,
    ijrrsLocation,
    ijrrsJobId,
    ijrrsResponseStatus,
  )
where

import Network.AWS.Glacier.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Provides options for initiating an Amazon S3 Glacier job.
--
--
--
-- /See:/ 'initiateJob' smart constructor.
data InitiateJob = InitiateJob'
  { _ijJobParameters ::
      !(Maybe JobParameters),
    _ijAccountId :: !Text,
    _ijVaultName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InitiateJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ijJobParameters' - Provides options for specifying job information.
--
-- * 'ijAccountId' - The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
--
-- * 'ijVaultName' - The name of the vault.
initiateJob ::
  -- | 'ijAccountId'
  Text ->
  -- | 'ijVaultName'
  Text ->
  InitiateJob
initiateJob pAccountId_ pVaultName_ =
  InitiateJob'
    { _ijJobParameters = Nothing,
      _ijAccountId = pAccountId_,
      _ijVaultName = pVaultName_
    }

-- | Provides options for specifying job information.
ijJobParameters :: Lens' InitiateJob (Maybe JobParameters)
ijJobParameters = lens _ijJobParameters (\s a -> s {_ijJobParameters = a})

-- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
ijAccountId :: Lens' InitiateJob Text
ijAccountId = lens _ijAccountId (\s a -> s {_ijAccountId = a})

-- | The name of the vault.
ijVaultName :: Lens' InitiateJob Text
ijVaultName = lens _ijVaultName (\s a -> s {_ijVaultName = a})

instance AWSRequest InitiateJob where
  type Rs InitiateJob = InitiateJobResponse
  request = postJSON glacier
  response =
    receiveEmpty
      ( \s h x ->
          InitiateJobResponse'
            <$> (h .#? "x-amz-job-output-path")
            <*> (h .#? "Location")
            <*> (h .#? "x-amz-job-id")
            <*> (pure (fromEnum s))
      )

instance Hashable InitiateJob

instance NFData InitiateJob

instance ToHeaders InitiateJob where
  toHeaders = const mempty

instance ToJSON InitiateJob where
  toJSON InitiateJob' {..} =
    object
      ( catMaybes
          [("jobParameters" .=) <$> _ijJobParameters]
      )

instance ToPath InitiateJob where
  toPath InitiateJob' {..} =
    mconcat
      [ "/",
        toBS _ijAccountId,
        "/vaults/",
        toBS _ijVaultName,
        "/jobs"
      ]

instance ToQuery InitiateJob where
  toQuery = const mempty

-- | Contains the Amazon S3 Glacier response to your request.
--
--
--
-- /See:/ 'initiateJobResponse' smart constructor.
data InitiateJobResponse = InitiateJobResponse'
  { _ijrrsJobOutputPath ::
      !(Maybe Text),
    _ijrrsLocation :: !(Maybe Text),
    _ijrrsJobId :: !(Maybe Text),
    _ijrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InitiateJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ijrrsJobOutputPath' - The path to the location of where the select results are stored.
--
-- * 'ijrrsLocation' - The relative URI path of the job.
--
-- * 'ijrrsJobId' - The ID of the job.
--
-- * 'ijrrsResponseStatus' - -- | The response status code.
initiateJobResponse ::
  -- | 'ijrrsResponseStatus'
  Int ->
  InitiateJobResponse
initiateJobResponse pResponseStatus_ =
  InitiateJobResponse'
    { _ijrrsJobOutputPath = Nothing,
      _ijrrsLocation = Nothing,
      _ijrrsJobId = Nothing,
      _ijrrsResponseStatus = pResponseStatus_
    }

-- | The path to the location of where the select results are stored.
ijrrsJobOutputPath :: Lens' InitiateJobResponse (Maybe Text)
ijrrsJobOutputPath = lens _ijrrsJobOutputPath (\s a -> s {_ijrrsJobOutputPath = a})

-- | The relative URI path of the job.
ijrrsLocation :: Lens' InitiateJobResponse (Maybe Text)
ijrrsLocation = lens _ijrrsLocation (\s a -> s {_ijrrsLocation = a})

-- | The ID of the job.
ijrrsJobId :: Lens' InitiateJobResponse (Maybe Text)
ijrrsJobId = lens _ijrrsJobId (\s a -> s {_ijrrsJobId = a})

-- | -- | The response status code.
ijrrsResponseStatus :: Lens' InitiateJobResponse Int
ijrrsResponseStatus = lens _ijrrsResponseStatus (\s a -> s {_ijrrsResponseStatus = a})

instance NFData InitiateJobResponse
