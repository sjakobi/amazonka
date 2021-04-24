{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.Runbook
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.Runbook where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.Target
import Network.AWS.SSM.Types.TargetLocation

-- | Information about an Automation runbook (Automation document) used in a runbook workflow in Change Manager.
--
--
--
-- /See:/ 'runbook' smart constructor.
data Runbook = Runbook'
  { _runMaxErrors ::
      !(Maybe Text),
    _runTargets :: !(Maybe [Target]),
    _runTargetLocations ::
      !(Maybe (List1 TargetLocation)),
    _runTargetParameterName :: !(Maybe Text),
    _runMaxConcurrency :: !(Maybe Text),
    _runDocumentVersion :: !(Maybe Text),
    _runParameters :: !(Maybe (Map Text [Text])),
    _runDocumentName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Runbook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'runMaxErrors' - The @MaxErrors@ value specified by the user when the execution started, indicating the maximum number of errors that can occur during the operation before the updates are stopped or rolled back.
--
-- * 'runTargets' - A key-value mapping to target resources that the Runbook operation performs tasks on. Required if you specify @TargetParameterName@ .
--
-- * 'runTargetLocations' - Information about the AWS Regions and accounts targeted by the current Runbook operation.
--
-- * 'runTargetParameterName' - The name of the parameter used as the target resource for the rate-controlled runbook workflow. Required if you specify @Targets@ .
--
-- * 'runMaxConcurrency' - The @MaxConcurrency@ value specified by the user when the operation started, indicating the maximum number of resources that the runbook operation can run on at the same time.
--
-- * 'runDocumentVersion' - The version of the Automation runbook (Automation document) used in a runbook workflow.
--
-- * 'runParameters' - The key-value map of execution parameters, which were supplied when calling @StartChangeRequestExecution@ .
--
-- * 'runDocumentName' - The name of the Automation runbook (Automation document) used in a runbook workflow.
runbook ::
  -- | 'runDocumentName'
  Text ->
  Runbook
runbook pDocumentName_ =
  Runbook'
    { _runMaxErrors = Nothing,
      _runTargets = Nothing,
      _runTargetLocations = Nothing,
      _runTargetParameterName = Nothing,
      _runMaxConcurrency = Nothing,
      _runDocumentVersion = Nothing,
      _runParameters = Nothing,
      _runDocumentName = pDocumentName_
    }

-- | The @MaxErrors@ value specified by the user when the execution started, indicating the maximum number of errors that can occur during the operation before the updates are stopped or rolled back.
runMaxErrors :: Lens' Runbook (Maybe Text)
runMaxErrors = lens _runMaxErrors (\s a -> s {_runMaxErrors = a})

-- | A key-value mapping to target resources that the Runbook operation performs tasks on. Required if you specify @TargetParameterName@ .
runTargets :: Lens' Runbook [Target]
runTargets = lens _runTargets (\s a -> s {_runTargets = a}) . _Default . _Coerce

-- | Information about the AWS Regions and accounts targeted by the current Runbook operation.
runTargetLocations :: Lens' Runbook (Maybe (NonEmpty TargetLocation))
runTargetLocations = lens _runTargetLocations (\s a -> s {_runTargetLocations = a}) . mapping _List1

-- | The name of the parameter used as the target resource for the rate-controlled runbook workflow. Required if you specify @Targets@ .
runTargetParameterName :: Lens' Runbook (Maybe Text)
runTargetParameterName = lens _runTargetParameterName (\s a -> s {_runTargetParameterName = a})

-- | The @MaxConcurrency@ value specified by the user when the operation started, indicating the maximum number of resources that the runbook operation can run on at the same time.
runMaxConcurrency :: Lens' Runbook (Maybe Text)
runMaxConcurrency = lens _runMaxConcurrency (\s a -> s {_runMaxConcurrency = a})

-- | The version of the Automation runbook (Automation document) used in a runbook workflow.
runDocumentVersion :: Lens' Runbook (Maybe Text)
runDocumentVersion = lens _runDocumentVersion (\s a -> s {_runDocumentVersion = a})

-- | The key-value map of execution parameters, which were supplied when calling @StartChangeRequestExecution@ .
runParameters :: Lens' Runbook (HashMap Text [Text])
runParameters = lens _runParameters (\s a -> s {_runParameters = a}) . _Default . _Map

-- | The name of the Automation runbook (Automation document) used in a runbook workflow.
runDocumentName :: Lens' Runbook Text
runDocumentName = lens _runDocumentName (\s a -> s {_runDocumentName = a})

instance FromJSON Runbook where
  parseJSON =
    withObject
      "Runbook"
      ( \x ->
          Runbook'
            <$> (x .:? "MaxErrors")
            <*> (x .:? "Targets" .!= mempty)
            <*> (x .:? "TargetLocations")
            <*> (x .:? "TargetParameterName")
            <*> (x .:? "MaxConcurrency")
            <*> (x .:? "DocumentVersion")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .: "DocumentName")
      )

instance Hashable Runbook

instance NFData Runbook

instance ToJSON Runbook where
  toJSON Runbook' {..} =
    object
      ( catMaybes
          [ ("MaxErrors" .=) <$> _runMaxErrors,
            ("Targets" .=) <$> _runTargets,
            ("TargetLocations" .=) <$> _runTargetLocations,
            ("TargetParameterName" .=)
              <$> _runTargetParameterName,
            ("MaxConcurrency" .=) <$> _runMaxConcurrency,
            ("DocumentVersion" .=) <$> _runDocumentVersion,
            ("Parameters" .=) <$> _runParameters,
            Just ("DocumentName" .= _runDocumentName)
          ]
      )
