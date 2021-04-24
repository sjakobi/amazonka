{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Queue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Queue where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.PricingPlan
import Network.AWS.MediaConvert.Types.QueueStatus
import Network.AWS.MediaConvert.Types.ReservationPlan
import Network.AWS.MediaConvert.Types.Type
import Network.AWS.Prelude

-- | You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.
--
-- /See:/ 'queue' smart constructor.
data Queue = Queue'
  { _qStatus :: !(Maybe QueueStatus),
    _qARN :: !(Maybe Text),
    _qCreatedAt :: !(Maybe POSIX),
    _qLastUpdated :: !(Maybe POSIX),
    _qSubmittedJobsCount :: !(Maybe Int),
    _qDescription :: !(Maybe Text),
    _qPricingPlan :: !(Maybe PricingPlan),
    _qReservationPlan :: !(Maybe ReservationPlan),
    _qType :: !(Maybe Type),
    _qProgressingJobsCount :: !(Maybe Int),
    _qName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Queue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qStatus' - Queues can be ACTIVE or PAUSED. If you pause a queue, the service won't begin processing jobs in that queue. Jobs that are running when you pause the queue continue to run until they finish or result in an error.
--
-- * 'qARN' - An identifier for this resource that is unique within all of AWS.
--
-- * 'qCreatedAt' - The timestamp in epoch seconds for when you created the queue.
--
-- * 'qLastUpdated' - The timestamp in epoch seconds for when you most recently updated the queue.
--
-- * 'qSubmittedJobsCount' - The estimated number of jobs with a SUBMITTED status.
--
-- * 'qDescription' - An optional description that you create for each queue.
--
-- * 'qPricingPlan' - Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment.
--
-- * 'qReservationPlan' - Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
--
-- * 'qType' - Specifies whether this on-demand queue is system or custom. System queues are built in. You can't modify or delete system queues. You can create and modify custom queues.
--
-- * 'qProgressingJobsCount' - The estimated number of jobs with a PROGRESSING status.
--
-- * 'qName' - A name that you create for each queue. Each name must be unique within your account.
queue ::
  -- | 'qName'
  Text ->
  Queue
queue pName_ =
  Queue'
    { _qStatus = Nothing,
      _qARN = Nothing,
      _qCreatedAt = Nothing,
      _qLastUpdated = Nothing,
      _qSubmittedJobsCount = Nothing,
      _qDescription = Nothing,
      _qPricingPlan = Nothing,
      _qReservationPlan = Nothing,
      _qType = Nothing,
      _qProgressingJobsCount = Nothing,
      _qName = pName_
    }

-- | Queues can be ACTIVE or PAUSED. If you pause a queue, the service won't begin processing jobs in that queue. Jobs that are running when you pause the queue continue to run until they finish or result in an error.
qStatus :: Lens' Queue (Maybe QueueStatus)
qStatus = lens _qStatus (\s a -> s {_qStatus = a})

-- | An identifier for this resource that is unique within all of AWS.
qARN :: Lens' Queue (Maybe Text)
qARN = lens _qARN (\s a -> s {_qARN = a})

-- | The timestamp in epoch seconds for when you created the queue.
qCreatedAt :: Lens' Queue (Maybe UTCTime)
qCreatedAt = lens _qCreatedAt (\s a -> s {_qCreatedAt = a}) . mapping _Time

-- | The timestamp in epoch seconds for when you most recently updated the queue.
qLastUpdated :: Lens' Queue (Maybe UTCTime)
qLastUpdated = lens _qLastUpdated (\s a -> s {_qLastUpdated = a}) . mapping _Time

-- | The estimated number of jobs with a SUBMITTED status.
qSubmittedJobsCount :: Lens' Queue (Maybe Int)
qSubmittedJobsCount = lens _qSubmittedJobsCount (\s a -> s {_qSubmittedJobsCount = a})

-- | An optional description that you create for each queue.
qDescription :: Lens' Queue (Maybe Text)
qDescription = lens _qDescription (\s a -> s {_qDescription = a})

-- | Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment.
qPricingPlan :: Lens' Queue (Maybe PricingPlan)
qPricingPlan = lens _qPricingPlan (\s a -> s {_qPricingPlan = a})

-- | Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
qReservationPlan :: Lens' Queue (Maybe ReservationPlan)
qReservationPlan = lens _qReservationPlan (\s a -> s {_qReservationPlan = a})

-- | Specifies whether this on-demand queue is system or custom. System queues are built in. You can't modify or delete system queues. You can create and modify custom queues.
qType :: Lens' Queue (Maybe Type)
qType = lens _qType (\s a -> s {_qType = a})

-- | The estimated number of jobs with a PROGRESSING status.
qProgressingJobsCount :: Lens' Queue (Maybe Int)
qProgressingJobsCount = lens _qProgressingJobsCount (\s a -> s {_qProgressingJobsCount = a})

-- | A name that you create for each queue. Each name must be unique within your account.
qName :: Lens' Queue Text
qName = lens _qName (\s a -> s {_qName = a})

instance FromJSON Queue where
  parseJSON =
    withObject
      "Queue"
      ( \x ->
          Queue'
            <$> (x .:? "status")
            <*> (x .:? "arn")
            <*> (x .:? "createdAt")
            <*> (x .:? "lastUpdated")
            <*> (x .:? "submittedJobsCount")
            <*> (x .:? "description")
            <*> (x .:? "pricingPlan")
            <*> (x .:? "reservationPlan")
            <*> (x .:? "type")
            <*> (x .:? "progressingJobsCount")
            <*> (x .: "name")
      )

instance Hashable Queue

instance NFData Queue
