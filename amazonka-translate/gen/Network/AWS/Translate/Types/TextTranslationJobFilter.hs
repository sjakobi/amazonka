{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.TextTranslationJobFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.TextTranslationJobFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Translate.Types.JobStatus

-- | Provides information for filtering a list of translation jobs. For more information, see 'ListTextTranslationJobs' .
--
--
--
-- /See:/ 'textTranslationJobFilter' smart constructor.
data TextTranslationJobFilter = TextTranslationJobFilter'
  { _ttjfJobStatus ::
      !(Maybe JobStatus),
    _ttjfSubmittedAfterTime ::
      !(Maybe POSIX),
    _ttjfSubmittedBeforeTime ::
      !(Maybe POSIX),
    _ttjfJobName ::
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

-- | Creates a value of 'TextTranslationJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttjfJobStatus' - Filters the list of jobs based by job status.
--
-- * 'ttjfSubmittedAfterTime' - Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'ttjfSubmittedBeforeTime' - Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'ttjfJobName' - Filters the list of jobs by name.
textTranslationJobFilter ::
  TextTranslationJobFilter
textTranslationJobFilter =
  TextTranslationJobFilter'
    { _ttjfJobStatus = Nothing,
      _ttjfSubmittedAfterTime = Nothing,
      _ttjfSubmittedBeforeTime = Nothing,
      _ttjfJobName = Nothing
    }

-- | Filters the list of jobs based by job status.
ttjfJobStatus :: Lens' TextTranslationJobFilter (Maybe JobStatus)
ttjfJobStatus = lens _ttjfJobStatus (\s a -> s {_ttjfJobStatus = a})

-- | Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
ttjfSubmittedAfterTime :: Lens' TextTranslationJobFilter (Maybe UTCTime)
ttjfSubmittedAfterTime = lens _ttjfSubmittedAfterTime (\s a -> s {_ttjfSubmittedAfterTime = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
ttjfSubmittedBeforeTime :: Lens' TextTranslationJobFilter (Maybe UTCTime)
ttjfSubmittedBeforeTime = lens _ttjfSubmittedBeforeTime (\s a -> s {_ttjfSubmittedBeforeTime = a}) . mapping _Time

-- | Filters the list of jobs by name.
ttjfJobName :: Lens' TextTranslationJobFilter (Maybe Text)
ttjfJobName = lens _ttjfJobName (\s a -> s {_ttjfJobName = a})

instance Hashable TextTranslationJobFilter

instance NFData TextTranslationJobFilter

instance ToJSON TextTranslationJobFilter where
  toJSON TextTranslationJobFilter' {..} =
    object
      ( catMaybes
          [ ("JobStatus" .=) <$> _ttjfJobStatus,
            ("SubmittedAfterTime" .=)
              <$> _ttjfSubmittedAfterTime,
            ("SubmittedBeforeTime" .=)
              <$> _ttjfSubmittedBeforeTime,
            ("JobName" .=) <$> _ttjfJobName
          ]
      )
