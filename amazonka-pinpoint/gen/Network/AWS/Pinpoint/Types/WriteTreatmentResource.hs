{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.WriteTreatmentResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.WriteTreatmentResource where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CustomDeliveryConfiguration
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Pinpoint.Types.TemplateConfiguration
import Network.AWS.Prelude

-- | Specifies the settings for a campaign treatment. A /treatment/ is a variation of a campaign that's used for A/B testing of a campaign.
--
--
--
-- /See:/ 'writeTreatmentResource' smart constructor.
data WriteTreatmentResource = WriteTreatmentResource'
  { _wtrCustomDeliveryConfiguration ::
      !( Maybe
           CustomDeliveryConfiguration
       ),
    _wtrTreatmentName ::
      !(Maybe Text),
    _wtrMessageConfiguration ::
      !( Maybe
           MessageConfiguration
       ),
    _wtrTemplateConfiguration ::
      !( Maybe
           TemplateConfiguration
       ),
    _wtrSchedule ::
      !(Maybe Schedule),
    _wtrTreatmentDescription ::
      !(Maybe Text),
    _wtrSizePercent :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'WriteTreatmentResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtrCustomDeliveryConfiguration' - The delivery configuration settings for sending the treatment through a custom channel. This object is required if the MessageConfiguration object for the treatment specifies a CustomMessage object.
--
-- * 'wtrTreatmentName' - A custom name for the treatment.
--
-- * 'wtrMessageConfiguration' - The message configuration settings for the treatment.
--
-- * 'wtrTemplateConfiguration' - The message template to use for the treatment.
--
-- * 'wtrSchedule' - The schedule settings for the treatment.
--
-- * 'wtrTreatmentDescription' - A custom description of the treatment.
--
-- * 'wtrSizePercent' - The allocated percentage of users (segment members) to send the treatment to.
writeTreatmentResource ::
  -- | 'wtrSizePercent'
  Int ->
  WriteTreatmentResource
writeTreatmentResource pSizePercent_ =
  WriteTreatmentResource'
    { _wtrCustomDeliveryConfiguration =
        Nothing,
      _wtrTreatmentName = Nothing,
      _wtrMessageConfiguration = Nothing,
      _wtrTemplateConfiguration = Nothing,
      _wtrSchedule = Nothing,
      _wtrTreatmentDescription = Nothing,
      _wtrSizePercent = pSizePercent_
    }

-- | The delivery configuration settings for sending the treatment through a custom channel. This object is required if the MessageConfiguration object for the treatment specifies a CustomMessage object.
wtrCustomDeliveryConfiguration :: Lens' WriteTreatmentResource (Maybe CustomDeliveryConfiguration)
wtrCustomDeliveryConfiguration = lens _wtrCustomDeliveryConfiguration (\s a -> s {_wtrCustomDeliveryConfiguration = a})

-- | A custom name for the treatment.
wtrTreatmentName :: Lens' WriteTreatmentResource (Maybe Text)
wtrTreatmentName = lens _wtrTreatmentName (\s a -> s {_wtrTreatmentName = a})

-- | The message configuration settings for the treatment.
wtrMessageConfiguration :: Lens' WriteTreatmentResource (Maybe MessageConfiguration)
wtrMessageConfiguration = lens _wtrMessageConfiguration (\s a -> s {_wtrMessageConfiguration = a})

-- | The message template to use for the treatment.
wtrTemplateConfiguration :: Lens' WriteTreatmentResource (Maybe TemplateConfiguration)
wtrTemplateConfiguration = lens _wtrTemplateConfiguration (\s a -> s {_wtrTemplateConfiguration = a})

-- | The schedule settings for the treatment.
wtrSchedule :: Lens' WriteTreatmentResource (Maybe Schedule)
wtrSchedule = lens _wtrSchedule (\s a -> s {_wtrSchedule = a})

-- | A custom description of the treatment.
wtrTreatmentDescription :: Lens' WriteTreatmentResource (Maybe Text)
wtrTreatmentDescription = lens _wtrTreatmentDescription (\s a -> s {_wtrTreatmentDescription = a})

-- | The allocated percentage of users (segment members) to send the treatment to.
wtrSizePercent :: Lens' WriteTreatmentResource Int
wtrSizePercent = lens _wtrSizePercent (\s a -> s {_wtrSizePercent = a})

instance Hashable WriteTreatmentResource

instance NFData WriteTreatmentResource

instance ToJSON WriteTreatmentResource where
  toJSON WriteTreatmentResource' {..} =
    object
      ( catMaybes
          [ ("CustomDeliveryConfiguration" .=)
              <$> _wtrCustomDeliveryConfiguration,
            ("TreatmentName" .=) <$> _wtrTreatmentName,
            ("MessageConfiguration" .=)
              <$> _wtrMessageConfiguration,
            ("TemplateConfiguration" .=)
              <$> _wtrTemplateConfiguration,
            ("Schedule" .=) <$> _wtrSchedule,
            ("TreatmentDescription" .=)
              <$> _wtrTreatmentDescription,
            Just ("SizePercent" .= _wtrSizePercent)
          ]
      )
