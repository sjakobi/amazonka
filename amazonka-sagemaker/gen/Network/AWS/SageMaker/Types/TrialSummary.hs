{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrialSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrialSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.TrialSource

-- | A summary of the properties of a trial. To get the complete set of properties, call the 'DescribeTrial' API and provide the @TrialName@ .
--
--
--
-- /See:/ 'trialSummary' smart constructor.
data TrialSummary = TrialSummary'
  { _tsTrialSource ::
      !(Maybe TrialSource),
    _tsTrialARN :: !(Maybe Text),
    _tsCreationTime :: !(Maybe POSIX),
    _tsLastModifiedTime :: !(Maybe POSIX),
    _tsDisplayName :: !(Maybe Text),
    _tsTrialName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrialSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsTrialSource' - Undocumented member.
--
-- * 'tsTrialARN' - The Amazon Resource Name (ARN) of the trial.
--
-- * 'tsCreationTime' - When the trial was created.
--
-- * 'tsLastModifiedTime' - When the trial was last modified.
--
-- * 'tsDisplayName' - The name of the trial as displayed. If @DisplayName@ isn't specified, @TrialName@ is displayed.
--
-- * 'tsTrialName' - The name of the trial.
trialSummary ::
  TrialSummary
trialSummary =
  TrialSummary'
    { _tsTrialSource = Nothing,
      _tsTrialARN = Nothing,
      _tsCreationTime = Nothing,
      _tsLastModifiedTime = Nothing,
      _tsDisplayName = Nothing,
      _tsTrialName = Nothing
    }

-- | Undocumented member.
tsTrialSource :: Lens' TrialSummary (Maybe TrialSource)
tsTrialSource = lens _tsTrialSource (\s a -> s {_tsTrialSource = a})

-- | The Amazon Resource Name (ARN) of the trial.
tsTrialARN :: Lens' TrialSummary (Maybe Text)
tsTrialARN = lens _tsTrialARN (\s a -> s {_tsTrialARN = a})

-- | When the trial was created.
tsCreationTime :: Lens' TrialSummary (Maybe UTCTime)
tsCreationTime = lens _tsCreationTime (\s a -> s {_tsCreationTime = a}) . mapping _Time

-- | When the trial was last modified.
tsLastModifiedTime :: Lens' TrialSummary (Maybe UTCTime)
tsLastModifiedTime = lens _tsLastModifiedTime (\s a -> s {_tsLastModifiedTime = a}) . mapping _Time

-- | The name of the trial as displayed. If @DisplayName@ isn't specified, @TrialName@ is displayed.
tsDisplayName :: Lens' TrialSummary (Maybe Text)
tsDisplayName = lens _tsDisplayName (\s a -> s {_tsDisplayName = a})

-- | The name of the trial.
tsTrialName :: Lens' TrialSummary (Maybe Text)
tsTrialName = lens _tsTrialName (\s a -> s {_tsTrialName = a})

instance FromJSON TrialSummary where
  parseJSON =
    withObject
      "TrialSummary"
      ( \x ->
          TrialSummary'
            <$> (x .:? "TrialSource")
            <*> (x .:? "TrialArn")
            <*> (x .:? "CreationTime")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "DisplayName")
            <*> (x .:? "TrialName")
      )

instance Hashable TrialSummary

instance NFData TrialSummary
