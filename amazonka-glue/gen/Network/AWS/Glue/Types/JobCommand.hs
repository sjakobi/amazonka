{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JobCommand
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.JobCommand where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies code executed when a job is run.
--
--
--
-- /See:/ 'jobCommand' smart constructor.
data JobCommand = JobCommand'
  { _jcPythonVersion ::
      !(Maybe Text),
    _jcScriptLocation :: !(Maybe Text),
    _jcName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobCommand' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcPythonVersion' - The Python version being used to execute a Python shell job. Allowed values are 2 or 3.
--
-- * 'jcScriptLocation' - Specifies the Amazon Simple Storage Service (Amazon S3) path to a script that executes a job.
--
-- * 'jcName' - The name of the job command. For an Apache Spark ETL job, this must be @glueetl@ . For a Python shell job, it must be @pythonshell@ . For an Apache Spark streaming ETL job, this must be @gluestreaming@ .
jobCommand ::
  JobCommand
jobCommand =
  JobCommand'
    { _jcPythonVersion = Nothing,
      _jcScriptLocation = Nothing,
      _jcName = Nothing
    }

-- | The Python version being used to execute a Python shell job. Allowed values are 2 or 3.
jcPythonVersion :: Lens' JobCommand (Maybe Text)
jcPythonVersion = lens _jcPythonVersion (\s a -> s {_jcPythonVersion = a})

-- | Specifies the Amazon Simple Storage Service (Amazon S3) path to a script that executes a job.
jcScriptLocation :: Lens' JobCommand (Maybe Text)
jcScriptLocation = lens _jcScriptLocation (\s a -> s {_jcScriptLocation = a})

-- | The name of the job command. For an Apache Spark ETL job, this must be @glueetl@ . For a Python shell job, it must be @pythonshell@ . For an Apache Spark streaming ETL job, this must be @gluestreaming@ .
jcName :: Lens' JobCommand (Maybe Text)
jcName = lens _jcName (\s a -> s {_jcName = a})

instance FromJSON JobCommand where
  parseJSON =
    withObject
      "JobCommand"
      ( \x ->
          JobCommand'
            <$> (x .:? "PythonVersion")
            <*> (x .:? "ScriptLocation")
            <*> (x .:? "Name")
      )

instance Hashable JobCommand

instance NFData JobCommand

instance ToJSON JobCommand where
  toJSON JobCommand' {..} =
    object
      ( catMaybes
          [ ("PythonVersion" .=) <$> _jcPythonVersion,
            ("ScriptLocation" .=) <$> _jcScriptLocation,
            ("Name" .=) <$> _jcName
          ]
      )
