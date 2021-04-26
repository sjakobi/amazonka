{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Activity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Activity where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.ConditionalSplitActivity
import Network.AWS.Pinpoint.Types.CustomMessageActivity
import Network.AWS.Pinpoint.Types.EmailMessageActivity
import Network.AWS.Pinpoint.Types.HoldoutActivity
import Network.AWS.Pinpoint.Types.MultiConditionalSplitActivity
import Network.AWS.Pinpoint.Types.PushMessageActivity
import Network.AWS.Pinpoint.Types.RandomSplitActivity
import Network.AWS.Pinpoint.Types.SMSMessageActivity
import Network.AWS.Pinpoint.Types.WaitActivity
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the configuration and other settings for an activity in a
-- journey.
--
-- /See:/ 'newActivity' smart constructor.
data Activity = Activity'
  { -- | The settings for a yes\/no split activity. This type of activity sends
    -- participants down one of two paths in a journey, based on conditions
    -- that you specify.
    conditionalSplit :: Prelude.Maybe ConditionalSplitActivity,
    -- | The settings for a push notification activity. This type of activity
    -- sends a push notification to participants.
    pUSH :: Prelude.Maybe PushMessageActivity,
    -- | The settings for a custom message activity. This type of activity calls
    -- an AWS Lambda function or web hook that sends messages to participants.
    cUSTOM :: Prelude.Maybe CustomMessageActivity,
    -- | The settings for a wait activity. This type of activity waits for a
    -- certain amount of time or until a specific date and time before moving
    -- participants to the next activity in a journey.
    wait :: Prelude.Maybe WaitActivity,
    -- | The settings for a multivariate split activity. This type of activity
    -- sends participants down one of as many as five paths (including a
    -- default /Else/ path) in a journey, based on conditions that you specify.
    multiCondition :: Prelude.Maybe MultiConditionalSplitActivity,
    -- | The settings for an email activity. This type of activity sends an email
    -- message to participants.
    eMAIL :: Prelude.Maybe EmailMessageActivity,
    -- | The settings for a holdout activity. This type of activity stops a
    -- journey for a specified percentage of participants.
    holdout :: Prelude.Maybe HoldoutActivity,
    -- | The settings for a random split activity. This type of activity randomly
    -- sends specified percentages of participants down one of as many as five
    -- paths in a journey, based on conditions that you specify.
    randomSplit :: Prelude.Maybe RandomSplitActivity,
    -- | The custom description of the activity.
    description :: Prelude.Maybe Prelude.Text,
    -- | The settings for an SMS activity. This type of activity sends a text
    -- message to participants.
    sMS :: Prelude.Maybe SMSMessageActivity
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Activity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'conditionalSplit', 'activity_conditionalSplit' - The settings for a yes\/no split activity. This type of activity sends
-- participants down one of two paths in a journey, based on conditions
-- that you specify.
--
-- 'pUSH', 'activity_pUSH' - The settings for a push notification activity. This type of activity
-- sends a push notification to participants.
--
-- 'cUSTOM', 'activity_cUSTOM' - The settings for a custom message activity. This type of activity calls
-- an AWS Lambda function or web hook that sends messages to participants.
--
-- 'wait', 'activity_wait' - The settings for a wait activity. This type of activity waits for a
-- certain amount of time or until a specific date and time before moving
-- participants to the next activity in a journey.
--
-- 'multiCondition', 'activity_multiCondition' - The settings for a multivariate split activity. This type of activity
-- sends participants down one of as many as five paths (including a
-- default /Else/ path) in a journey, based on conditions that you specify.
--
-- 'eMAIL', 'activity_eMAIL' - The settings for an email activity. This type of activity sends an email
-- message to participants.
--
-- 'holdout', 'activity_holdout' - The settings for a holdout activity. This type of activity stops a
-- journey for a specified percentage of participants.
--
-- 'randomSplit', 'activity_randomSplit' - The settings for a random split activity. This type of activity randomly
-- sends specified percentages of participants down one of as many as five
-- paths in a journey, based on conditions that you specify.
--
-- 'description', 'activity_description' - The custom description of the activity.
--
-- 'sMS', 'activity_sMS' - The settings for an SMS activity. This type of activity sends a text
-- message to participants.
newActivity ::
  Activity
newActivity =
  Activity'
    { conditionalSplit = Prelude.Nothing,
      pUSH = Prelude.Nothing,
      cUSTOM = Prelude.Nothing,
      wait = Prelude.Nothing,
      multiCondition = Prelude.Nothing,
      eMAIL = Prelude.Nothing,
      holdout = Prelude.Nothing,
      randomSplit = Prelude.Nothing,
      description = Prelude.Nothing,
      sMS = Prelude.Nothing
    }

-- | The settings for a yes\/no split activity. This type of activity sends
-- participants down one of two paths in a journey, based on conditions
-- that you specify.
activity_conditionalSplit :: Lens.Lens' Activity (Prelude.Maybe ConditionalSplitActivity)
activity_conditionalSplit = Lens.lens (\Activity' {conditionalSplit} -> conditionalSplit) (\s@Activity' {} a -> s {conditionalSplit = a} :: Activity)

-- | The settings for a push notification activity. This type of activity
-- sends a push notification to participants.
activity_pUSH :: Lens.Lens' Activity (Prelude.Maybe PushMessageActivity)
activity_pUSH = Lens.lens (\Activity' {pUSH} -> pUSH) (\s@Activity' {} a -> s {pUSH = a} :: Activity)

-- | The settings for a custom message activity. This type of activity calls
-- an AWS Lambda function or web hook that sends messages to participants.
activity_cUSTOM :: Lens.Lens' Activity (Prelude.Maybe CustomMessageActivity)
activity_cUSTOM = Lens.lens (\Activity' {cUSTOM} -> cUSTOM) (\s@Activity' {} a -> s {cUSTOM = a} :: Activity)

-- | The settings for a wait activity. This type of activity waits for a
-- certain amount of time or until a specific date and time before moving
-- participants to the next activity in a journey.
activity_wait :: Lens.Lens' Activity (Prelude.Maybe WaitActivity)
activity_wait = Lens.lens (\Activity' {wait} -> wait) (\s@Activity' {} a -> s {wait = a} :: Activity)

-- | The settings for a multivariate split activity. This type of activity
-- sends participants down one of as many as five paths (including a
-- default /Else/ path) in a journey, based on conditions that you specify.
activity_multiCondition :: Lens.Lens' Activity (Prelude.Maybe MultiConditionalSplitActivity)
activity_multiCondition = Lens.lens (\Activity' {multiCondition} -> multiCondition) (\s@Activity' {} a -> s {multiCondition = a} :: Activity)

-- | The settings for an email activity. This type of activity sends an email
-- message to participants.
activity_eMAIL :: Lens.Lens' Activity (Prelude.Maybe EmailMessageActivity)
activity_eMAIL = Lens.lens (\Activity' {eMAIL} -> eMAIL) (\s@Activity' {} a -> s {eMAIL = a} :: Activity)

-- | The settings for a holdout activity. This type of activity stops a
-- journey for a specified percentage of participants.
activity_holdout :: Lens.Lens' Activity (Prelude.Maybe HoldoutActivity)
activity_holdout = Lens.lens (\Activity' {holdout} -> holdout) (\s@Activity' {} a -> s {holdout = a} :: Activity)

-- | The settings for a random split activity. This type of activity randomly
-- sends specified percentages of participants down one of as many as five
-- paths in a journey, based on conditions that you specify.
activity_randomSplit :: Lens.Lens' Activity (Prelude.Maybe RandomSplitActivity)
activity_randomSplit = Lens.lens (\Activity' {randomSplit} -> randomSplit) (\s@Activity' {} a -> s {randomSplit = a} :: Activity)

-- | The custom description of the activity.
activity_description :: Lens.Lens' Activity (Prelude.Maybe Prelude.Text)
activity_description = Lens.lens (\Activity' {description} -> description) (\s@Activity' {} a -> s {description = a} :: Activity)

-- | The settings for an SMS activity. This type of activity sends a text
-- message to participants.
activity_sMS :: Lens.Lens' Activity (Prelude.Maybe SMSMessageActivity)
activity_sMS = Lens.lens (\Activity' {sMS} -> sMS) (\s@Activity' {} a -> s {sMS = a} :: Activity)

instance Prelude.FromJSON Activity where
  parseJSON =
    Prelude.withObject
      "Activity"
      ( \x ->
          Activity'
            Prelude.<$> (x Prelude..:? "ConditionalSplit")
            Prelude.<*> (x Prelude..:? "PUSH")
            Prelude.<*> (x Prelude..:? "CUSTOM")
            Prelude.<*> (x Prelude..:? "Wait")
            Prelude.<*> (x Prelude..:? "MultiCondition")
            Prelude.<*> (x Prelude..:? "EMAIL")
            Prelude.<*> (x Prelude..:? "Holdout")
            Prelude.<*> (x Prelude..:? "RandomSplit")
            Prelude.<*> (x Prelude..:? "Description")
            Prelude.<*> (x Prelude..:? "SMS")
      )

instance Prelude.Hashable Activity

instance Prelude.NFData Activity

instance Prelude.ToJSON Activity where
  toJSON Activity' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ConditionalSplit" Prelude..=)
              Prelude.<$> conditionalSplit,
            ("PUSH" Prelude..=) Prelude.<$> pUSH,
            ("CUSTOM" Prelude..=) Prelude.<$> cUSTOM,
            ("Wait" Prelude..=) Prelude.<$> wait,
            ("MultiCondition" Prelude..=)
              Prelude.<$> multiCondition,
            ("EMAIL" Prelude..=) Prelude.<$> eMAIL,
            ("Holdout" Prelude..=) Prelude.<$> holdout,
            ("RandomSplit" Prelude..=) Prelude.<$> randomSplit,
            ("Description" Prelude..=) Prelude.<$> description,
            ("SMS" Prelude..=) Prelude.<$> sMS
          ]
      )
