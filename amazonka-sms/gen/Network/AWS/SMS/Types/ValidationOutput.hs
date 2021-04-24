{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ValidationOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ValidationOutput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.AppValidationOutput
import Network.AWS.SMS.Types.ServerValidationOutput
import Network.AWS.SMS.Types.ValidationStatus

-- | Contains validation output.
--
--
--
-- /See:/ 'validationOutput' smart constructor.
data ValidationOutput = ValidationOutput'
  { _voStatusMessage ::
      !(Maybe Text),
    _voStatus ::
      !(Maybe ValidationStatus),
    _voValidationId :: !(Maybe Text),
    _voAppValidationOutput ::
      !(Maybe AppValidationOutput),
    _voName :: !(Maybe Text),
    _voServerValidationOutput ::
      !(Maybe ServerValidationOutput),
    _voLatestValidationTime ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ValidationOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'voStatusMessage' - The status message.
--
-- * 'voStatus' - The status of the validation.
--
-- * 'voValidationId' - The ID of the validation.
--
-- * 'voAppValidationOutput' - The output from validating an application.
--
-- * 'voName' - The name of the validation.
--
-- * 'voServerValidationOutput' - The output from validation an instance.
--
-- * 'voLatestValidationTime' - The latest time that the validation was performed.
validationOutput ::
  ValidationOutput
validationOutput =
  ValidationOutput'
    { _voStatusMessage = Nothing,
      _voStatus = Nothing,
      _voValidationId = Nothing,
      _voAppValidationOutput = Nothing,
      _voName = Nothing,
      _voServerValidationOutput = Nothing,
      _voLatestValidationTime = Nothing
    }

-- | The status message.
voStatusMessage :: Lens' ValidationOutput (Maybe Text)
voStatusMessage = lens _voStatusMessage (\s a -> s {_voStatusMessage = a})

-- | The status of the validation.
voStatus :: Lens' ValidationOutput (Maybe ValidationStatus)
voStatus = lens _voStatus (\s a -> s {_voStatus = a})

-- | The ID of the validation.
voValidationId :: Lens' ValidationOutput (Maybe Text)
voValidationId = lens _voValidationId (\s a -> s {_voValidationId = a})

-- | The output from validating an application.
voAppValidationOutput :: Lens' ValidationOutput (Maybe AppValidationOutput)
voAppValidationOutput = lens _voAppValidationOutput (\s a -> s {_voAppValidationOutput = a})

-- | The name of the validation.
voName :: Lens' ValidationOutput (Maybe Text)
voName = lens _voName (\s a -> s {_voName = a})

-- | The output from validation an instance.
voServerValidationOutput :: Lens' ValidationOutput (Maybe ServerValidationOutput)
voServerValidationOutput = lens _voServerValidationOutput (\s a -> s {_voServerValidationOutput = a})

-- | The latest time that the validation was performed.
voLatestValidationTime :: Lens' ValidationOutput (Maybe UTCTime)
voLatestValidationTime = lens _voLatestValidationTime (\s a -> s {_voLatestValidationTime = a}) . mapping _Time

instance FromJSON ValidationOutput where
  parseJSON =
    withObject
      "ValidationOutput"
      ( \x ->
          ValidationOutput'
            <$> (x .:? "statusMessage")
            <*> (x .:? "status")
            <*> (x .:? "validationId")
            <*> (x .:? "appValidationOutput")
            <*> (x .:? "name")
            <*> (x .:? "serverValidationOutput")
            <*> (x .:? "latestValidationTime")
      )

instance Hashable ValidationOutput

instance NFData ValidationOutput
