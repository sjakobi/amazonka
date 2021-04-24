{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.CampaignResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.CampaignState
import Network.AWS.Pinpoint.Types.CustomDeliveryConfiguration
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Pinpoint.Types.TemplateConfiguration
import Network.AWS.Pinpoint.Types.TreatmentResource
import Network.AWS.Prelude

-- | Provides information about the status, configuration, and other settings for a campaign.
--
--
--
-- /See:/ 'campaignResponse' smart constructor.
data CampaignResponse = CampaignResponse'
  { _crAdditionalTreatments ::
      !(Maybe [TreatmentResource]),
    _crHook :: !(Maybe CampaignHook),
    _crVersion :: !(Maybe Int),
    _crCustomDeliveryConfiguration ::
      !(Maybe CustomDeliveryConfiguration),
    _crState :: !(Maybe CampaignState),
    _crName :: !(Maybe Text),
    _crDefaultState ::
      !(Maybe CampaignState),
    _crIsPaused :: !(Maybe Bool),
    _crTags :: !(Maybe (Map Text Text)),
    _crLimits :: !(Maybe CampaignLimits),
    _crDescription :: !(Maybe Text),
    _crTreatmentName :: !(Maybe Text),
    _crMessageConfiguration ::
      !(Maybe MessageConfiguration),
    _crTemplateConfiguration ::
      !(Maybe TemplateConfiguration),
    _crSchedule :: !(Maybe Schedule),
    _crHoldoutPercent :: !(Maybe Int),
    _crTreatmentDescription ::
      !(Maybe Text),
    _crLastModifiedDate :: !Text,
    _crCreationDate :: !Text,
    _crSegmentId :: !Text,
    _crSegmentVersion :: !Int,
    _crId :: !Text,
    _crARN :: !Text,
    _crApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CampaignResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crAdditionalTreatments' - An array of responses, one for each treatment that you defined for the campaign, in addition to the default treatment.
--
-- * 'crHook' - The settings for the AWS Lambda function to use as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.
--
-- * 'crVersion' - The version number of the campaign.
--
-- * 'crCustomDeliveryConfiguration' - The delivery configuration settings for sending the campaign through a custom channel.
--
-- * 'crState' - The current status of the campaign.
--
-- * 'crName' - The name of the campaign.
--
-- * 'crDefaultState' - The current status of the campaign's default treatment. This value exists only for campaigns that have more than one treatment.
--
-- * 'crIsPaused' - Specifies whether the campaign is paused. A paused campaign doesn't run unless you resume it by changing this value to false.
--
-- * 'crTags' - A string-to-string map of key-value pairs that identifies the tags that are associated with the campaign. Each tag consists of a required tag key and an associated tag value.
--
-- * 'crLimits' - The messaging limits for the campaign.
--
-- * 'crDescription' - The custom description of the campaign.
--
-- * 'crTreatmentName' - The custom name of the default treatment for the campaign, if the campaign has multiple treatments. A /treatment/ is a variation of a campaign that's used for A/B testing.
--
-- * 'crMessageConfiguration' - The message configuration settings for the campaign.
--
-- * 'crTemplateConfiguration' - The message template that’s used for the campaign.
--
-- * 'crSchedule' - The schedule settings for the campaign.
--
-- * 'crHoldoutPercent' - The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.
--
-- * 'crTreatmentDescription' - The custom description of the default treatment for the campaign.
--
-- * 'crLastModifiedDate' - The date, in ISO 8601 format, when the campaign was last modified.
--
-- * 'crCreationDate' - The date, in ISO 8601 format, when the campaign was created.
--
-- * 'crSegmentId' - The unique identifier for the segment that's associated with the campaign.
--
-- * 'crSegmentVersion' - The version number of the segment that's associated with the campaign.
--
-- * 'crId' - The unique identifier for the campaign.
--
-- * 'crARN' - The Amazon Resource Name (ARN) of the campaign.
--
-- * 'crApplicationId' - The unique identifier for the application that the campaign applies to.
campaignResponse ::
  -- | 'crLastModifiedDate'
  Text ->
  -- | 'crCreationDate'
  Text ->
  -- | 'crSegmentId'
  Text ->
  -- | 'crSegmentVersion'
  Int ->
  -- | 'crId'
  Text ->
  -- | 'crARN'
  Text ->
  -- | 'crApplicationId'
  Text ->
  CampaignResponse
campaignResponse
  pLastModifiedDate_
  pCreationDate_
  pSegmentId_
  pSegmentVersion_
  pId_
  pARN_
  pApplicationId_ =
    CampaignResponse'
      { _crAdditionalTreatments =
          Nothing,
        _crHook = Nothing,
        _crVersion = Nothing,
        _crCustomDeliveryConfiguration = Nothing,
        _crState = Nothing,
        _crName = Nothing,
        _crDefaultState = Nothing,
        _crIsPaused = Nothing,
        _crTags = Nothing,
        _crLimits = Nothing,
        _crDescription = Nothing,
        _crTreatmentName = Nothing,
        _crMessageConfiguration = Nothing,
        _crTemplateConfiguration = Nothing,
        _crSchedule = Nothing,
        _crHoldoutPercent = Nothing,
        _crTreatmentDescription = Nothing,
        _crLastModifiedDate = pLastModifiedDate_,
        _crCreationDate = pCreationDate_,
        _crSegmentId = pSegmentId_,
        _crSegmentVersion = pSegmentVersion_,
        _crId = pId_,
        _crARN = pARN_,
        _crApplicationId = pApplicationId_
      }

-- | An array of responses, one for each treatment that you defined for the campaign, in addition to the default treatment.
crAdditionalTreatments :: Lens' CampaignResponse [TreatmentResource]
crAdditionalTreatments = lens _crAdditionalTreatments (\s a -> s {_crAdditionalTreatments = a}) . _Default . _Coerce

-- | The settings for the AWS Lambda function to use as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.
crHook :: Lens' CampaignResponse (Maybe CampaignHook)
crHook = lens _crHook (\s a -> s {_crHook = a})

-- | The version number of the campaign.
crVersion :: Lens' CampaignResponse (Maybe Int)
crVersion = lens _crVersion (\s a -> s {_crVersion = a})

-- | The delivery configuration settings for sending the campaign through a custom channel.
crCustomDeliveryConfiguration :: Lens' CampaignResponse (Maybe CustomDeliveryConfiguration)
crCustomDeliveryConfiguration = lens _crCustomDeliveryConfiguration (\s a -> s {_crCustomDeliveryConfiguration = a})

-- | The current status of the campaign.
crState :: Lens' CampaignResponse (Maybe CampaignState)
crState = lens _crState (\s a -> s {_crState = a})

-- | The name of the campaign.
crName :: Lens' CampaignResponse (Maybe Text)
crName = lens _crName (\s a -> s {_crName = a})

-- | The current status of the campaign's default treatment. This value exists only for campaigns that have more than one treatment.
crDefaultState :: Lens' CampaignResponse (Maybe CampaignState)
crDefaultState = lens _crDefaultState (\s a -> s {_crDefaultState = a})

-- | Specifies whether the campaign is paused. A paused campaign doesn't run unless you resume it by changing this value to false.
crIsPaused :: Lens' CampaignResponse (Maybe Bool)
crIsPaused = lens _crIsPaused (\s a -> s {_crIsPaused = a})

-- | A string-to-string map of key-value pairs that identifies the tags that are associated with the campaign. Each tag consists of a required tag key and an associated tag value.
crTags :: Lens' CampaignResponse (HashMap Text Text)
crTags = lens _crTags (\s a -> s {_crTags = a}) . _Default . _Map

-- | The messaging limits for the campaign.
crLimits :: Lens' CampaignResponse (Maybe CampaignLimits)
crLimits = lens _crLimits (\s a -> s {_crLimits = a})

-- | The custom description of the campaign.
crDescription :: Lens' CampaignResponse (Maybe Text)
crDescription = lens _crDescription (\s a -> s {_crDescription = a})

-- | The custom name of the default treatment for the campaign, if the campaign has multiple treatments. A /treatment/ is a variation of a campaign that's used for A/B testing.
crTreatmentName :: Lens' CampaignResponse (Maybe Text)
crTreatmentName = lens _crTreatmentName (\s a -> s {_crTreatmentName = a})

-- | The message configuration settings for the campaign.
crMessageConfiguration :: Lens' CampaignResponse (Maybe MessageConfiguration)
crMessageConfiguration = lens _crMessageConfiguration (\s a -> s {_crMessageConfiguration = a})

-- | The message template that’s used for the campaign.
crTemplateConfiguration :: Lens' CampaignResponse (Maybe TemplateConfiguration)
crTemplateConfiguration = lens _crTemplateConfiguration (\s a -> s {_crTemplateConfiguration = a})

-- | The schedule settings for the campaign.
crSchedule :: Lens' CampaignResponse (Maybe Schedule)
crSchedule = lens _crSchedule (\s a -> s {_crSchedule = a})

-- | The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.
crHoldoutPercent :: Lens' CampaignResponse (Maybe Int)
crHoldoutPercent = lens _crHoldoutPercent (\s a -> s {_crHoldoutPercent = a})

-- | The custom description of the default treatment for the campaign.
crTreatmentDescription :: Lens' CampaignResponse (Maybe Text)
crTreatmentDescription = lens _crTreatmentDescription (\s a -> s {_crTreatmentDescription = a})

-- | The date, in ISO 8601 format, when the campaign was last modified.
crLastModifiedDate :: Lens' CampaignResponse Text
crLastModifiedDate = lens _crLastModifiedDate (\s a -> s {_crLastModifiedDate = a})

-- | The date, in ISO 8601 format, when the campaign was created.
crCreationDate :: Lens' CampaignResponse Text
crCreationDate = lens _crCreationDate (\s a -> s {_crCreationDate = a})

-- | The unique identifier for the segment that's associated with the campaign.
crSegmentId :: Lens' CampaignResponse Text
crSegmentId = lens _crSegmentId (\s a -> s {_crSegmentId = a})

-- | The version number of the segment that's associated with the campaign.
crSegmentVersion :: Lens' CampaignResponse Int
crSegmentVersion = lens _crSegmentVersion (\s a -> s {_crSegmentVersion = a})

-- | The unique identifier for the campaign.
crId :: Lens' CampaignResponse Text
crId = lens _crId (\s a -> s {_crId = a})

-- | The Amazon Resource Name (ARN) of the campaign.
crARN :: Lens' CampaignResponse Text
crARN = lens _crARN (\s a -> s {_crARN = a})

-- | The unique identifier for the application that the campaign applies to.
crApplicationId :: Lens' CampaignResponse Text
crApplicationId = lens _crApplicationId (\s a -> s {_crApplicationId = a})

instance FromJSON CampaignResponse where
  parseJSON =
    withObject
      "CampaignResponse"
      ( \x ->
          CampaignResponse'
            <$> (x .:? "AdditionalTreatments" .!= mempty)
            <*> (x .:? "Hook")
            <*> (x .:? "Version")
            <*> (x .:? "CustomDeliveryConfiguration")
            <*> (x .:? "State")
            <*> (x .:? "Name")
            <*> (x .:? "DefaultState")
            <*> (x .:? "IsPaused")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "Limits")
            <*> (x .:? "Description")
            <*> (x .:? "TreatmentName")
            <*> (x .:? "MessageConfiguration")
            <*> (x .:? "TemplateConfiguration")
            <*> (x .:? "Schedule")
            <*> (x .:? "HoldoutPercent")
            <*> (x .:? "TreatmentDescription")
            <*> (x .: "LastModifiedDate")
            <*> (x .: "CreationDate")
            <*> (x .: "SegmentId")
            <*> (x .: "SegmentVersion")
            <*> (x .: "Id")
            <*> (x .: "Arn")
            <*> (x .: "ApplicationId")
      )

instance Hashable CampaignResponse

instance NFData CampaignResponse
