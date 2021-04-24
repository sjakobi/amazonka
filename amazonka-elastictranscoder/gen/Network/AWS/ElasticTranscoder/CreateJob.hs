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
-- Module      : Network.AWS.ElasticTranscoder.CreateJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified plus information about the job that is created.
--
--
-- If you have specified more than one output for your jobs (for example, one output for the Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to list the jobs (as opposed to the AWS Console).
module Network.AWS.ElasticTranscoder.CreateJob
  ( -- * Creating a Request
    createJob,
    CreateJob,

    -- * Request Lenses
    cjOutputs,
    cjInput,
    cjOutputKeyPrefix,
    cjOutput,
    cjUserMetadata,
    cjInputs,
    cjPlaylists,
    cjPipelineId,

    -- * Destructuring the Response
    createJobResponse,
    CreateJobResponse,

    -- * Response Lenses
    crsJob,
    crsResponseStatus,
  )
where

import Network.AWS.ElasticTranscoder.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The @CreateJobRequest@ structure.
--
--
--
-- /See:/ 'createJob' smart constructor.
data CreateJob = CreateJob'
  { _cjOutputs ::
      !(Maybe [CreateJobOutput]),
    _cjInput :: !(Maybe JobInput),
    _cjOutputKeyPrefix :: !(Maybe Text),
    _cjOutput :: !(Maybe CreateJobOutput),
    _cjUserMetadata :: !(Maybe (Map Text Text)),
    _cjInputs :: !(Maybe [JobInput]),
    _cjPlaylists :: !(Maybe [CreateJobPlaylist]),
    _cjPipelineId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjOutputs' - A section of the request body that provides information about the transcoded (target) files. We recommend that you use the @Outputs@ syntax instead of the @Output@ syntax.
--
-- * 'cjInput' - A section of the request body that provides information about the file that is being transcoded.
--
-- * 'cjOutputKeyPrefix' - The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job creates, including output files, thumbnails, and playlists.
--
-- * 'cjOutput' - A section of the request body that provides information about the transcoded (target) file. We strongly recommend that you use the @Outputs@ syntax instead of the @Output@ syntax.
--
-- * 'cjUserMetadata' - User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in @key/value@ pairs, and you can add up to 10 @key/value@ pairs per job. Elastic Transcoder does not guarantee that @key/value@ pairs are returned in the same order in which you specify them.
--
-- * 'cjInputs' - A section of the request body that provides information about the files that are being transcoded.
--
-- * 'cjPlaylists' - If you specify a preset in @PresetId@ for which the value of @Container@ is fmp4 (Fragmented MP4) or ts (MPEG-TS), Playlists contains information about the master playlists that you want Elastic Transcoder to create. The maximum number of master playlists in a job is 30.
--
-- * 'cjPipelineId' - The @Id@ of the pipeline that you want Elastic Transcoder to use for transcoding. The pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the files to transcode and the bucket into which Elastic Transcoder puts the transcoded files.
createJob ::
  -- | 'cjPipelineId'
  Text ->
  CreateJob
createJob pPipelineId_ =
  CreateJob'
    { _cjOutputs = Nothing,
      _cjInput = Nothing,
      _cjOutputKeyPrefix = Nothing,
      _cjOutput = Nothing,
      _cjUserMetadata = Nothing,
      _cjInputs = Nothing,
      _cjPlaylists = Nothing,
      _cjPipelineId = pPipelineId_
    }

-- | A section of the request body that provides information about the transcoded (target) files. We recommend that you use the @Outputs@ syntax instead of the @Output@ syntax.
cjOutputs :: Lens' CreateJob [CreateJobOutput]
cjOutputs = lens _cjOutputs (\s a -> s {_cjOutputs = a}) . _Default . _Coerce

-- | A section of the request body that provides information about the file that is being transcoded.
cjInput :: Lens' CreateJob (Maybe JobInput)
cjInput = lens _cjInput (\s a -> s {_cjInput = a})

-- | The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job creates, including output files, thumbnails, and playlists.
cjOutputKeyPrefix :: Lens' CreateJob (Maybe Text)
cjOutputKeyPrefix = lens _cjOutputKeyPrefix (\s a -> s {_cjOutputKeyPrefix = a})

-- | A section of the request body that provides information about the transcoded (target) file. We strongly recommend that you use the @Outputs@ syntax instead of the @Output@ syntax.
cjOutput :: Lens' CreateJob (Maybe CreateJobOutput)
cjOutput = lens _cjOutput (\s a -> s {_cjOutput = a})

-- | User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in @key/value@ pairs, and you can add up to 10 @key/value@ pairs per job. Elastic Transcoder does not guarantee that @key/value@ pairs are returned in the same order in which you specify them.
cjUserMetadata :: Lens' CreateJob (HashMap Text Text)
cjUserMetadata = lens _cjUserMetadata (\s a -> s {_cjUserMetadata = a}) . _Default . _Map

-- | A section of the request body that provides information about the files that are being transcoded.
cjInputs :: Lens' CreateJob [JobInput]
cjInputs = lens _cjInputs (\s a -> s {_cjInputs = a}) . _Default . _Coerce

-- | If you specify a preset in @PresetId@ for which the value of @Container@ is fmp4 (Fragmented MP4) or ts (MPEG-TS), Playlists contains information about the master playlists that you want Elastic Transcoder to create. The maximum number of master playlists in a job is 30.
cjPlaylists :: Lens' CreateJob [CreateJobPlaylist]
cjPlaylists = lens _cjPlaylists (\s a -> s {_cjPlaylists = a}) . _Default . _Coerce

-- | The @Id@ of the pipeline that you want Elastic Transcoder to use for transcoding. The pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the files to transcode and the bucket into which Elastic Transcoder puts the transcoded files.
cjPipelineId :: Lens' CreateJob Text
cjPipelineId = lens _cjPipelineId (\s a -> s {_cjPipelineId = a})

instance AWSRequest CreateJob where
  type Rs CreateJob = CreateJobResponse
  request = postJSON elasticTranscoder
  response =
    receiveJSON
      ( \s h x ->
          CreateJobResponse'
            <$> (x .?> "Job") <*> (pure (fromEnum s))
      )

instance Hashable CreateJob

instance NFData CreateJob

instance ToHeaders CreateJob where
  toHeaders = const mempty

instance ToJSON CreateJob where
  toJSON CreateJob' {..} =
    object
      ( catMaybes
          [ ("Outputs" .=) <$> _cjOutputs,
            ("Input" .=) <$> _cjInput,
            ("OutputKeyPrefix" .=) <$> _cjOutputKeyPrefix,
            ("Output" .=) <$> _cjOutput,
            ("UserMetadata" .=) <$> _cjUserMetadata,
            ("Inputs" .=) <$> _cjInputs,
            ("Playlists" .=) <$> _cjPlaylists,
            Just ("PipelineId" .= _cjPipelineId)
          ]
      )

instance ToPath CreateJob where
  toPath = const "/2012-09-25/jobs"

instance ToQuery CreateJob where
  toQuery = const mempty

-- | The CreateJobResponse structure.
--
--
--
-- /See:/ 'createJobResponse' smart constructor.
data CreateJobResponse = CreateJobResponse'
  { _crsJob ::
      !(Maybe Job'),
    _crsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsJob' - A section of the response body that provides information about the job that is created.
--
-- * 'crsResponseStatus' - -- | The response status code.
createJobResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateJobResponse
createJobResponse pResponseStatus_ =
  CreateJobResponse'
    { _crsJob = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | A section of the response body that provides information about the job that is created.
crsJob :: Lens' CreateJobResponse (Maybe Job')
crsJob = lens _crsJob (\s a -> s {_crsJob = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateJobResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateJobResponse
