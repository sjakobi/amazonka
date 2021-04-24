{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.SSMValidationParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.SSMValidationParameters where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.ScriptType
import Network.AWS.SMS.Types.Source

-- | Contains validation parameters.
--
--
--
-- /See:/ 'sSMValidationParameters' smart constructor.
data SSMValidationParameters = SSMValidationParameters'
  { _ssmvpInstanceId ::
      !(Maybe Text),
    _ssmvpOutputS3BucketName ::
      !(Maybe Text),
    _ssmvpSource ::
      !(Maybe Source),
    _ssmvpScriptType ::
      !(Maybe ScriptType),
    _ssmvpCommand ::
      !(Maybe Text),
    _ssmvpExecutionTimeoutSeconds ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SSMValidationParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssmvpInstanceId' - The ID of the instance. The instance must have the following tag: UserForSMSApplicationValidation=true.
--
-- * 'ssmvpOutputS3BucketName' - The name of the S3 bucket for output.
--
-- * 'ssmvpSource' - The location of the validation script.
--
-- * 'ssmvpScriptType' - The type of validation script.
--
-- * 'ssmvpCommand' - The command to run the validation script
--
-- * 'ssmvpExecutionTimeoutSeconds' - The timeout interval, in seconds.
sSMValidationParameters ::
  SSMValidationParameters
sSMValidationParameters =
  SSMValidationParameters'
    { _ssmvpInstanceId =
        Nothing,
      _ssmvpOutputS3BucketName = Nothing,
      _ssmvpSource = Nothing,
      _ssmvpScriptType = Nothing,
      _ssmvpCommand = Nothing,
      _ssmvpExecutionTimeoutSeconds = Nothing
    }

-- | The ID of the instance. The instance must have the following tag: UserForSMSApplicationValidation=true.
ssmvpInstanceId :: Lens' SSMValidationParameters (Maybe Text)
ssmvpInstanceId = lens _ssmvpInstanceId (\s a -> s {_ssmvpInstanceId = a})

-- | The name of the S3 bucket for output.
ssmvpOutputS3BucketName :: Lens' SSMValidationParameters (Maybe Text)
ssmvpOutputS3BucketName = lens _ssmvpOutputS3BucketName (\s a -> s {_ssmvpOutputS3BucketName = a})

-- | The location of the validation script.
ssmvpSource :: Lens' SSMValidationParameters (Maybe Source)
ssmvpSource = lens _ssmvpSource (\s a -> s {_ssmvpSource = a})

-- | The type of validation script.
ssmvpScriptType :: Lens' SSMValidationParameters (Maybe ScriptType)
ssmvpScriptType = lens _ssmvpScriptType (\s a -> s {_ssmvpScriptType = a})

-- | The command to run the validation script
ssmvpCommand :: Lens' SSMValidationParameters (Maybe Text)
ssmvpCommand = lens _ssmvpCommand (\s a -> s {_ssmvpCommand = a})

-- | The timeout interval, in seconds.
ssmvpExecutionTimeoutSeconds :: Lens' SSMValidationParameters (Maybe Natural)
ssmvpExecutionTimeoutSeconds = lens _ssmvpExecutionTimeoutSeconds (\s a -> s {_ssmvpExecutionTimeoutSeconds = a}) . mapping _Nat

instance FromJSON SSMValidationParameters where
  parseJSON =
    withObject
      "SSMValidationParameters"
      ( \x ->
          SSMValidationParameters'
            <$> (x .:? "instanceId")
            <*> (x .:? "outputS3BucketName")
            <*> (x .:? "source")
            <*> (x .:? "scriptType")
            <*> (x .:? "command")
            <*> (x .:? "executionTimeoutSeconds")
      )

instance Hashable SSMValidationParameters

instance NFData SSMValidationParameters

instance ToJSON SSMValidationParameters where
  toJSON SSMValidationParameters' {..} =
    object
      ( catMaybes
          [ ("instanceId" .=) <$> _ssmvpInstanceId,
            ("outputS3BucketName" .=)
              <$> _ssmvpOutputS3BucketName,
            ("source" .=) <$> _ssmvpSource,
            ("scriptType" .=) <$> _ssmvpScriptType,
            ("command" .=) <$> _ssmvpCommand,
            ("executionTimeoutSeconds" .=)
              <$> _ssmvpExecutionTimeoutSeconds
          ]
      )
