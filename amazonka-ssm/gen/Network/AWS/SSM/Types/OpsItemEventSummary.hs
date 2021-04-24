{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsItemEventSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemEventSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.OpsItemIdentity

-- | Summary information about an OpsItem event.
--
--
--
-- /See:/ 'opsItemEventSummary' smart constructor.
data OpsItemEventSummary = OpsItemEventSummary'
  { _oiesEventId ::
      !(Maybe Text),
    _oiesDetailType ::
      !(Maybe Text),
    _oiesSource :: !(Maybe Text),
    _oiesCreatedTime ::
      !(Maybe POSIX),
    _oiesOpsItemId :: !(Maybe Text),
    _oiesDetail :: !(Maybe Text),
    _oiesCreatedBy ::
      !(Maybe OpsItemIdentity)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OpsItemEventSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiesEventId' - The ID of the OpsItem event.
--
-- * 'oiesDetailType' - The type of information provided as a detail.
--
-- * 'oiesSource' - The source of the OpsItem event.
--
-- * 'oiesCreatedTime' - The date and time the OpsItem event was created.
--
-- * 'oiesOpsItemId' - The ID of the OpsItem.
--
-- * 'oiesDetail' - Specific information about the OpsItem event.
--
-- * 'oiesCreatedBy' - Information about the user or resource that created the OpsItem event.
opsItemEventSummary ::
  OpsItemEventSummary
opsItemEventSummary =
  OpsItemEventSummary'
    { _oiesEventId = Nothing,
      _oiesDetailType = Nothing,
      _oiesSource = Nothing,
      _oiesCreatedTime = Nothing,
      _oiesOpsItemId = Nothing,
      _oiesDetail = Nothing,
      _oiesCreatedBy = Nothing
    }

-- | The ID of the OpsItem event.
oiesEventId :: Lens' OpsItemEventSummary (Maybe Text)
oiesEventId = lens _oiesEventId (\s a -> s {_oiesEventId = a})

-- | The type of information provided as a detail.
oiesDetailType :: Lens' OpsItemEventSummary (Maybe Text)
oiesDetailType = lens _oiesDetailType (\s a -> s {_oiesDetailType = a})

-- | The source of the OpsItem event.
oiesSource :: Lens' OpsItemEventSummary (Maybe Text)
oiesSource = lens _oiesSource (\s a -> s {_oiesSource = a})

-- | The date and time the OpsItem event was created.
oiesCreatedTime :: Lens' OpsItemEventSummary (Maybe UTCTime)
oiesCreatedTime = lens _oiesCreatedTime (\s a -> s {_oiesCreatedTime = a}) . mapping _Time

-- | The ID of the OpsItem.
oiesOpsItemId :: Lens' OpsItemEventSummary (Maybe Text)
oiesOpsItemId = lens _oiesOpsItemId (\s a -> s {_oiesOpsItemId = a})

-- | Specific information about the OpsItem event.
oiesDetail :: Lens' OpsItemEventSummary (Maybe Text)
oiesDetail = lens _oiesDetail (\s a -> s {_oiesDetail = a})

-- | Information about the user or resource that created the OpsItem event.
oiesCreatedBy :: Lens' OpsItemEventSummary (Maybe OpsItemIdentity)
oiesCreatedBy = lens _oiesCreatedBy (\s a -> s {_oiesCreatedBy = a})

instance FromJSON OpsItemEventSummary where
  parseJSON =
    withObject
      "OpsItemEventSummary"
      ( \x ->
          OpsItemEventSummary'
            <$> (x .:? "EventId")
            <*> (x .:? "DetailType")
            <*> (x .:? "Source")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "OpsItemId")
            <*> (x .:? "Detail")
            <*> (x .:? "CreatedBy")
      )

instance Hashable OpsItemEventSummary

instance NFData OpsItemEventSummary
