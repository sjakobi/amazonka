{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.TextTranslationJobProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.TextTranslationJobProperties where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Translate.Types.InputDataConfig
import Network.AWS.Translate.Types.JobDetails
import Network.AWS.Translate.Types.JobStatus
import Network.AWS.Translate.Types.OutputDataConfig

-- | Provides information about a translation job.
--
--
--
-- /See:/ 'textTranslationJobProperties' smart constructor.
data TextTranslationJobProperties = TextTranslationJobProperties'
  { _ttjpParallelDataNames ::
      !( Maybe
           [Text]
       ),
    _ttjpInputDataConfig ::
      !( Maybe
           InputDataConfig
       ),
    _ttjpSubmittedTime ::
      !( Maybe
           POSIX
       ),
    _ttjpMessage ::
      !(Maybe Text),
    _ttjpJobStatus ::
      !( Maybe
           JobStatus
       ),
    _ttjpJobDetails ::
      !( Maybe
           JobDetails
       ),
    _ttjpOutputDataConfig ::
      !( Maybe
           OutputDataConfig
       ),
    _ttjpTargetLanguageCodes ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _ttjpEndTime ::
      !( Maybe
           POSIX
       ),
    _ttjpTerminologyNames ::
      !( Maybe
           [Text]
       ),
    _ttjpJobName ::
      !(Maybe Text),
    _ttjpDataAccessRoleARN ::
      !(Maybe Text),
    _ttjpJobId ::
      !(Maybe Text),
    _ttjpSourceLanguageCode ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TextTranslationJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttjpParallelDataNames' - A list containing the names of the parallel data resources applied to the translation job.
--
-- * 'ttjpInputDataConfig' - The input configuration properties that were specified when the job was requested.
--
-- * 'ttjpSubmittedTime' - The time at which the translation job was submitted.
--
-- * 'ttjpMessage' - An explanation of any errors that may have occured during the translation job.
--
-- * 'ttjpJobStatus' - The status of the translation job.
--
-- * 'ttjpJobDetails' - The number of documents successfully and unsuccessfully processed during the translation job.
--
-- * 'ttjpOutputDataConfig' - The output configuration properties that were specified when the job was requested.
--
-- * 'ttjpTargetLanguageCodes' - The language code of the language of the target text. The language must be a language supported by Amazon Translate.
--
-- * 'ttjpEndTime' - The time at which the translation job ended.
--
-- * 'ttjpTerminologyNames' - A list containing the names of the terminologies applied to a translation job. Only one terminology can be applied per 'StartTextTranslationJob' request at this time.
--
-- * 'ttjpJobName' - The user-defined name of the translation job.
--
-- * 'ttjpDataAccessRoleARN' - The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that granted Amazon Translate read access to the job's input data.
--
-- * 'ttjpJobId' - The ID of the translation job.
--
-- * 'ttjpSourceLanguageCode' - The language code of the language of the source text. The language must be a language supported by Amazon Translate.
textTranslationJobProperties ::
  TextTranslationJobProperties
textTranslationJobProperties =
  TextTranslationJobProperties'
    { _ttjpParallelDataNames =
        Nothing,
      _ttjpInputDataConfig = Nothing,
      _ttjpSubmittedTime = Nothing,
      _ttjpMessage = Nothing,
      _ttjpJobStatus = Nothing,
      _ttjpJobDetails = Nothing,
      _ttjpOutputDataConfig = Nothing,
      _ttjpTargetLanguageCodes = Nothing,
      _ttjpEndTime = Nothing,
      _ttjpTerminologyNames = Nothing,
      _ttjpJobName = Nothing,
      _ttjpDataAccessRoleARN = Nothing,
      _ttjpJobId = Nothing,
      _ttjpSourceLanguageCode = Nothing
    }

-- | A list containing the names of the parallel data resources applied to the translation job.
ttjpParallelDataNames :: Lens' TextTranslationJobProperties [Text]
ttjpParallelDataNames = lens _ttjpParallelDataNames (\s a -> s {_ttjpParallelDataNames = a}) . _Default . _Coerce

-- | The input configuration properties that were specified when the job was requested.
ttjpInputDataConfig :: Lens' TextTranslationJobProperties (Maybe InputDataConfig)
ttjpInputDataConfig = lens _ttjpInputDataConfig (\s a -> s {_ttjpInputDataConfig = a})

-- | The time at which the translation job was submitted.
ttjpSubmittedTime :: Lens' TextTranslationJobProperties (Maybe UTCTime)
ttjpSubmittedTime = lens _ttjpSubmittedTime (\s a -> s {_ttjpSubmittedTime = a}) . mapping _Time

-- | An explanation of any errors that may have occured during the translation job.
ttjpMessage :: Lens' TextTranslationJobProperties (Maybe Text)
ttjpMessage = lens _ttjpMessage (\s a -> s {_ttjpMessage = a})

-- | The status of the translation job.
ttjpJobStatus :: Lens' TextTranslationJobProperties (Maybe JobStatus)
ttjpJobStatus = lens _ttjpJobStatus (\s a -> s {_ttjpJobStatus = a})

-- | The number of documents successfully and unsuccessfully processed during the translation job.
ttjpJobDetails :: Lens' TextTranslationJobProperties (Maybe JobDetails)
ttjpJobDetails = lens _ttjpJobDetails (\s a -> s {_ttjpJobDetails = a})

-- | The output configuration properties that were specified when the job was requested.
ttjpOutputDataConfig :: Lens' TextTranslationJobProperties (Maybe OutputDataConfig)
ttjpOutputDataConfig = lens _ttjpOutputDataConfig (\s a -> s {_ttjpOutputDataConfig = a})

-- | The language code of the language of the target text. The language must be a language supported by Amazon Translate.
ttjpTargetLanguageCodes :: Lens' TextTranslationJobProperties (Maybe (NonEmpty Text))
ttjpTargetLanguageCodes = lens _ttjpTargetLanguageCodes (\s a -> s {_ttjpTargetLanguageCodes = a}) . mapping _List1

-- | The time at which the translation job ended.
ttjpEndTime :: Lens' TextTranslationJobProperties (Maybe UTCTime)
ttjpEndTime = lens _ttjpEndTime (\s a -> s {_ttjpEndTime = a}) . mapping _Time

-- | A list containing the names of the terminologies applied to a translation job. Only one terminology can be applied per 'StartTextTranslationJob' request at this time.
ttjpTerminologyNames :: Lens' TextTranslationJobProperties [Text]
ttjpTerminologyNames = lens _ttjpTerminologyNames (\s a -> s {_ttjpTerminologyNames = a}) . _Default . _Coerce

-- | The user-defined name of the translation job.
ttjpJobName :: Lens' TextTranslationJobProperties (Maybe Text)
ttjpJobName = lens _ttjpJobName (\s a -> s {_ttjpJobName = a})

-- | The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that granted Amazon Translate read access to the job's input data.
ttjpDataAccessRoleARN :: Lens' TextTranslationJobProperties (Maybe Text)
ttjpDataAccessRoleARN = lens _ttjpDataAccessRoleARN (\s a -> s {_ttjpDataAccessRoleARN = a})

-- | The ID of the translation job.
ttjpJobId :: Lens' TextTranslationJobProperties (Maybe Text)
ttjpJobId = lens _ttjpJobId (\s a -> s {_ttjpJobId = a})

-- | The language code of the language of the source text. The language must be a language supported by Amazon Translate.
ttjpSourceLanguageCode :: Lens' TextTranslationJobProperties (Maybe Text)
ttjpSourceLanguageCode = lens _ttjpSourceLanguageCode (\s a -> s {_ttjpSourceLanguageCode = a})

instance FromJSON TextTranslationJobProperties where
  parseJSON =
    withObject
      "TextTranslationJobProperties"
      ( \x ->
          TextTranslationJobProperties'
            <$> (x .:? "ParallelDataNames" .!= mempty)
            <*> (x .:? "InputDataConfig")
            <*> (x .:? "SubmittedTime")
            <*> (x .:? "Message")
            <*> (x .:? "JobStatus")
            <*> (x .:? "JobDetails")
            <*> (x .:? "OutputDataConfig")
            <*> (x .:? "TargetLanguageCodes")
            <*> (x .:? "EndTime")
            <*> (x .:? "TerminologyNames" .!= mempty)
            <*> (x .:? "JobName")
            <*> (x .:? "DataAccessRoleArn")
            <*> (x .:? "JobId")
            <*> (x .:? "SourceLanguageCode")
      )

instance Hashable TextTranslationJobProperties

instance NFData TextTranslationJobProperties
