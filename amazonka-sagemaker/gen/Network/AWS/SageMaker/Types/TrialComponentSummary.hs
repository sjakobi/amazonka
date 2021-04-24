{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrialComponentSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrialComponentSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.TrialComponentSource
import Network.AWS.SageMaker.Types.TrialComponentStatus
import Network.AWS.SageMaker.Types.UserContext

-- | A summary of the properties of a trial component. To get all the properties, call the 'DescribeTrialComponent' API and provide the @TrialComponentName@ .
--
--
--
-- /See:/ 'trialComponentSummary' smart constructor.
data TrialComponentSummary = TrialComponentSummary'
  { _tcsStatus ::
      !( Maybe
           TrialComponentStatus
       ),
    _tcsCreationTime ::
      !(Maybe POSIX),
    _tcsTrialComponentARN ::
      !(Maybe Text),
    _tcsStartTime ::
      !(Maybe POSIX),
    _tcsEndTime ::
      !(Maybe POSIX),
    _tcsLastModifiedTime ::
      !(Maybe POSIX),
    _tcsCreatedBy ::
      !(Maybe UserContext),
    _tcsLastModifiedBy ::
      !(Maybe UserContext),
    _tcsTrialComponentSource ::
      !( Maybe
           TrialComponentSource
       ),
    _tcsDisplayName ::
      !(Maybe Text),
    _tcsTrialComponentName ::
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

-- | Creates a value of 'TrialComponentSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcsStatus' - The status of the component. States include:     * InProgress     * Completed     * Failed
--
-- * 'tcsCreationTime' - When the component was created.
--
-- * 'tcsTrialComponentARN' - The ARN of the trial component.
--
-- * 'tcsStartTime' - When the component started.
--
-- * 'tcsEndTime' - When the component ended.
--
-- * 'tcsLastModifiedTime' - When the component was last modified.
--
-- * 'tcsCreatedBy' - Who created the component.
--
-- * 'tcsLastModifiedBy' - Who last modified the component.
--
-- * 'tcsTrialComponentSource' - Undocumented member.
--
-- * 'tcsDisplayName' - The name of the component as displayed. If @DisplayName@ isn't specified, @TrialComponentName@ is displayed.
--
-- * 'tcsTrialComponentName' - The name of the trial component.
trialComponentSummary ::
  TrialComponentSummary
trialComponentSummary =
  TrialComponentSummary'
    { _tcsStatus = Nothing,
      _tcsCreationTime = Nothing,
      _tcsTrialComponentARN = Nothing,
      _tcsStartTime = Nothing,
      _tcsEndTime = Nothing,
      _tcsLastModifiedTime = Nothing,
      _tcsCreatedBy = Nothing,
      _tcsLastModifiedBy = Nothing,
      _tcsTrialComponentSource = Nothing,
      _tcsDisplayName = Nothing,
      _tcsTrialComponentName = Nothing
    }

-- | The status of the component. States include:     * InProgress     * Completed     * Failed
tcsStatus :: Lens' TrialComponentSummary (Maybe TrialComponentStatus)
tcsStatus = lens _tcsStatus (\s a -> s {_tcsStatus = a})

-- | When the component was created.
tcsCreationTime :: Lens' TrialComponentSummary (Maybe UTCTime)
tcsCreationTime = lens _tcsCreationTime (\s a -> s {_tcsCreationTime = a}) . mapping _Time

-- | The ARN of the trial component.
tcsTrialComponentARN :: Lens' TrialComponentSummary (Maybe Text)
tcsTrialComponentARN = lens _tcsTrialComponentARN (\s a -> s {_tcsTrialComponentARN = a})

-- | When the component started.
tcsStartTime :: Lens' TrialComponentSummary (Maybe UTCTime)
tcsStartTime = lens _tcsStartTime (\s a -> s {_tcsStartTime = a}) . mapping _Time

-- | When the component ended.
tcsEndTime :: Lens' TrialComponentSummary (Maybe UTCTime)
tcsEndTime = lens _tcsEndTime (\s a -> s {_tcsEndTime = a}) . mapping _Time

-- | When the component was last modified.
tcsLastModifiedTime :: Lens' TrialComponentSummary (Maybe UTCTime)
tcsLastModifiedTime = lens _tcsLastModifiedTime (\s a -> s {_tcsLastModifiedTime = a}) . mapping _Time

-- | Who created the component.
tcsCreatedBy :: Lens' TrialComponentSummary (Maybe UserContext)
tcsCreatedBy = lens _tcsCreatedBy (\s a -> s {_tcsCreatedBy = a})

-- | Who last modified the component.
tcsLastModifiedBy :: Lens' TrialComponentSummary (Maybe UserContext)
tcsLastModifiedBy = lens _tcsLastModifiedBy (\s a -> s {_tcsLastModifiedBy = a})

-- | Undocumented member.
tcsTrialComponentSource :: Lens' TrialComponentSummary (Maybe TrialComponentSource)
tcsTrialComponentSource = lens _tcsTrialComponentSource (\s a -> s {_tcsTrialComponentSource = a})

-- | The name of the component as displayed. If @DisplayName@ isn't specified, @TrialComponentName@ is displayed.
tcsDisplayName :: Lens' TrialComponentSummary (Maybe Text)
tcsDisplayName = lens _tcsDisplayName (\s a -> s {_tcsDisplayName = a})

-- | The name of the trial component.
tcsTrialComponentName :: Lens' TrialComponentSummary (Maybe Text)
tcsTrialComponentName = lens _tcsTrialComponentName (\s a -> s {_tcsTrialComponentName = a})

instance FromJSON TrialComponentSummary where
  parseJSON =
    withObject
      "TrialComponentSummary"
      ( \x ->
          TrialComponentSummary'
            <$> (x .:? "Status")
            <*> (x .:? "CreationTime")
            <*> (x .:? "TrialComponentArn")
            <*> (x .:? "StartTime")
            <*> (x .:? "EndTime")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "LastModifiedBy")
            <*> (x .:? "TrialComponentSource")
            <*> (x .:? "DisplayName")
            <*> (x .:? "TrialComponentName")
      )

instance Hashable TrialComponentSummary

instance NFData TrialComponentSummary
