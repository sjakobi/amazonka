{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types.Job'
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.Job' where

import Network.AWS.ElasticTranscoder.Types.JobInput
import Network.AWS.ElasticTranscoder.Types.JobOutput
import Network.AWS.ElasticTranscoder.Types.Playlist
import Network.AWS.ElasticTranscoder.Types.Timing
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A section of the response body that provides information about the job that is created.
--
--
--
-- /See:/ 'job'' smart constructor.
data Job' = Job''
  { _jPipelineId :: !(Maybe Text),
    _jStatus :: !(Maybe Text),
    _jOutputs :: !(Maybe [JobOutput]),
    _jInput :: !(Maybe JobInput),
    _jOutputKeyPrefix :: !(Maybe Text),
    _jARN :: !(Maybe Text),
    _jId :: !(Maybe Text),
    _jOutput :: !(Maybe JobOutput),
    _jUserMetadata :: !(Maybe (Map Text Text)),
    _jTiming :: !(Maybe Timing),
    _jInputs :: !(Maybe [JobInput]),
    _jPlaylists :: !(Maybe [Playlist])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Job'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jPipelineId' - The @Id@ of the pipeline that you want Elastic Transcoder to use for transcoding. The pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the files to transcode and the bucket into which Elastic Transcoder puts the transcoded files.
--
-- * 'jStatus' - The status of the job: @Submitted@ , @Progressing@ , @Complete@ , @Canceled@ , or @Error@ .
--
-- * 'jOutputs' - Information about the output files. We recommend that you use the @Outputs@ syntax for all jobs, even when you want Elastic Transcoder to transcode a file into only one format. Do not use both the @Outputs@ and @Output@ syntaxes in the same request. You can create a maximum of 30 outputs per job.  If you specify more than one output for a job, Elastic Transcoder creates the files for each output in the order in which you specify them in the job.
--
-- * 'jInput' - A section of the request or response body that provides information about the file that is being transcoded.
--
-- * 'jOutputKeyPrefix' - The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job creates, including output files, thumbnails, and playlists. We recommend that you add a / or some other delimiter to the end of the @OutputKeyPrefix@ .
--
-- * 'jARN' - The Amazon Resource Name (ARN) for the job.
--
-- * 'jId' - The identifier that Elastic Transcoder assigned to the job. You use this value to get settings for the job or to delete the job.
--
-- * 'jOutput' - If you specified one output for a job, information about that output. If you specified multiple outputs for a job, the Output object lists information about the first output. This duplicates the information that is listed for the first output in the Outputs object. /Important:/ Outputs recommended instead. A section of the request or response body that provides information about the transcoded (target) file.
--
-- * 'jUserMetadata' - User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in @key/value@ pairs, and you can add up to 10 @key/value@ pairs per job. Elastic Transcoder does not guarantee that @key/value@ pairs are returned in the same order in which you specify them. Metadata @keys@ and @values@ must use characters from the following list:     * @0-9@      * @A-Z@ and @a-z@      * @Space@      * The following symbols: @_.:/=+-%@@
--
-- * 'jTiming' - Details about the timing of a job.
--
-- * 'jInputs' - Information about the files that you're transcoding. If you specified multiple files for this job, Elastic Transcoder stitches the files together to make one output.
--
-- * 'jPlaylists' - /Important:/ Outputs in Fragmented MP4 or MPEG-TS format only. If you specify a preset in @PresetId@ for which the value of @Container@ is fmp4 (Fragmented MP4) or ts (MPEG-TS), @Playlists@ contains information about the master playlists that you want Elastic Transcoder to create. The maximum number of master playlists in a job is 30.
job' ::
  Job'
job' =
  Job''
    { _jPipelineId = Nothing,
      _jStatus = Nothing,
      _jOutputs = Nothing,
      _jInput = Nothing,
      _jOutputKeyPrefix = Nothing,
      _jARN = Nothing,
      _jId = Nothing,
      _jOutput = Nothing,
      _jUserMetadata = Nothing,
      _jTiming = Nothing,
      _jInputs = Nothing,
      _jPlaylists = Nothing
    }

-- | The @Id@ of the pipeline that you want Elastic Transcoder to use for transcoding. The pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the files to transcode and the bucket into which Elastic Transcoder puts the transcoded files.
jPipelineId :: Lens' Job' (Maybe Text)
jPipelineId = lens _jPipelineId (\s a -> s {_jPipelineId = a})

-- | The status of the job: @Submitted@ , @Progressing@ , @Complete@ , @Canceled@ , or @Error@ .
jStatus :: Lens' Job' (Maybe Text)
jStatus = lens _jStatus (\s a -> s {_jStatus = a})

-- | Information about the output files. We recommend that you use the @Outputs@ syntax for all jobs, even when you want Elastic Transcoder to transcode a file into only one format. Do not use both the @Outputs@ and @Output@ syntaxes in the same request. You can create a maximum of 30 outputs per job.  If you specify more than one output for a job, Elastic Transcoder creates the files for each output in the order in which you specify them in the job.
jOutputs :: Lens' Job' [JobOutput]
jOutputs = lens _jOutputs (\s a -> s {_jOutputs = a}) . _Default . _Coerce

-- | A section of the request or response body that provides information about the file that is being transcoded.
jInput :: Lens' Job' (Maybe JobInput)
jInput = lens _jInput (\s a -> s {_jInput = a})

-- | The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job creates, including output files, thumbnails, and playlists. We recommend that you add a / or some other delimiter to the end of the @OutputKeyPrefix@ .
jOutputKeyPrefix :: Lens' Job' (Maybe Text)
jOutputKeyPrefix = lens _jOutputKeyPrefix (\s a -> s {_jOutputKeyPrefix = a})

-- | The Amazon Resource Name (ARN) for the job.
jARN :: Lens' Job' (Maybe Text)
jARN = lens _jARN (\s a -> s {_jARN = a})

-- | The identifier that Elastic Transcoder assigned to the job. You use this value to get settings for the job or to delete the job.
jId :: Lens' Job' (Maybe Text)
jId = lens _jId (\s a -> s {_jId = a})

-- | If you specified one output for a job, information about that output. If you specified multiple outputs for a job, the Output object lists information about the first output. This duplicates the information that is listed for the first output in the Outputs object. /Important:/ Outputs recommended instead. A section of the request or response body that provides information about the transcoded (target) file.
jOutput :: Lens' Job' (Maybe JobOutput)
jOutput = lens _jOutput (\s a -> s {_jOutput = a})

-- | User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in @key/value@ pairs, and you can add up to 10 @key/value@ pairs per job. Elastic Transcoder does not guarantee that @key/value@ pairs are returned in the same order in which you specify them. Metadata @keys@ and @values@ must use characters from the following list:     * @0-9@      * @A-Z@ and @a-z@      * @Space@      * The following symbols: @_.:/=+-%@@
jUserMetadata :: Lens' Job' (HashMap Text Text)
jUserMetadata = lens _jUserMetadata (\s a -> s {_jUserMetadata = a}) . _Default . _Map

-- | Details about the timing of a job.
jTiming :: Lens' Job' (Maybe Timing)
jTiming = lens _jTiming (\s a -> s {_jTiming = a})

-- | Information about the files that you're transcoding. If you specified multiple files for this job, Elastic Transcoder stitches the files together to make one output.
jInputs :: Lens' Job' [JobInput]
jInputs = lens _jInputs (\s a -> s {_jInputs = a}) . _Default . _Coerce

-- | /Important:/ Outputs in Fragmented MP4 or MPEG-TS format only. If you specify a preset in @PresetId@ for which the value of @Container@ is fmp4 (Fragmented MP4) or ts (MPEG-TS), @Playlists@ contains information about the master playlists that you want Elastic Transcoder to create. The maximum number of master playlists in a job is 30.
jPlaylists :: Lens' Job' [Playlist]
jPlaylists = lens _jPlaylists (\s a -> s {_jPlaylists = a}) . _Default . _Coerce

instance FromJSON Job' where
  parseJSON =
    withObject
      "Job'"
      ( \x ->
          Job''
            <$> (x .:? "PipelineId")
            <*> (x .:? "Status")
            <*> (x .:? "Outputs" .!= mempty)
            <*> (x .:? "Input")
            <*> (x .:? "OutputKeyPrefix")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Output")
            <*> (x .:? "UserMetadata" .!= mempty)
            <*> (x .:? "Timing")
            <*> (x .:? "Inputs" .!= mempty)
            <*> (x .:? "Playlists" .!= mempty)
      )

instance Hashable Job'

instance NFData Job'
