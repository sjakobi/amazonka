{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.DataTransferProgress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.DataTransferProgress where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

-- | Describes the status of a cluster while it is in the process of resizing with an incremental resize.
--
--
--
-- /See:/ 'dataTransferProgress' smart constructor.
data DataTransferProgress = DataTransferProgress'
  { _dtpStatus ::
      !(Maybe Text),
    _dtpEstimatedTimeToCompletionInSeconds ::
      !(Maybe Integer),
    _dtpDataTransferredInMegaBytes ::
      !(Maybe Integer),
    _dtpCurrentRateInMegaBytesPerSecond ::
      !(Maybe Double),
    _dtpElapsedTimeInSeconds ::
      !(Maybe Integer),
    _dtpTotalDataInMegaBytes ::
      !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataTransferProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtpStatus' - Describes the status of the cluster. While the transfer is in progress the status is @transferringdata@ .
--
-- * 'dtpEstimatedTimeToCompletionInSeconds' - Describes the estimated number of seconds remaining to complete the transfer.
--
-- * 'dtpDataTransferredInMegaBytes' - Describes the total amount of data that has been transfered in MB's.
--
-- * 'dtpCurrentRateInMegaBytesPerSecond' - Describes the data transfer rate in MB's per second.
--
-- * 'dtpElapsedTimeInSeconds' - Describes the number of seconds that have elapsed during the data transfer.
--
-- * 'dtpTotalDataInMegaBytes' - Describes the total amount of data to be transfered in megabytes.
dataTransferProgress ::
  DataTransferProgress
dataTransferProgress =
  DataTransferProgress'
    { _dtpStatus = Nothing,
      _dtpEstimatedTimeToCompletionInSeconds = Nothing,
      _dtpDataTransferredInMegaBytes = Nothing,
      _dtpCurrentRateInMegaBytesPerSecond = Nothing,
      _dtpElapsedTimeInSeconds = Nothing,
      _dtpTotalDataInMegaBytes = Nothing
    }

-- | Describes the status of the cluster. While the transfer is in progress the status is @transferringdata@ .
dtpStatus :: Lens' DataTransferProgress (Maybe Text)
dtpStatus = lens _dtpStatus (\s a -> s {_dtpStatus = a})

-- | Describes the estimated number of seconds remaining to complete the transfer.
dtpEstimatedTimeToCompletionInSeconds :: Lens' DataTransferProgress (Maybe Integer)
dtpEstimatedTimeToCompletionInSeconds = lens _dtpEstimatedTimeToCompletionInSeconds (\s a -> s {_dtpEstimatedTimeToCompletionInSeconds = a})

-- | Describes the total amount of data that has been transfered in MB's.
dtpDataTransferredInMegaBytes :: Lens' DataTransferProgress (Maybe Integer)
dtpDataTransferredInMegaBytes = lens _dtpDataTransferredInMegaBytes (\s a -> s {_dtpDataTransferredInMegaBytes = a})

-- | Describes the data transfer rate in MB's per second.
dtpCurrentRateInMegaBytesPerSecond :: Lens' DataTransferProgress (Maybe Double)
dtpCurrentRateInMegaBytesPerSecond = lens _dtpCurrentRateInMegaBytesPerSecond (\s a -> s {_dtpCurrentRateInMegaBytesPerSecond = a})

-- | Describes the number of seconds that have elapsed during the data transfer.
dtpElapsedTimeInSeconds :: Lens' DataTransferProgress (Maybe Integer)
dtpElapsedTimeInSeconds = lens _dtpElapsedTimeInSeconds (\s a -> s {_dtpElapsedTimeInSeconds = a})

-- | Describes the total amount of data to be transfered in megabytes.
dtpTotalDataInMegaBytes :: Lens' DataTransferProgress (Maybe Integer)
dtpTotalDataInMegaBytes = lens _dtpTotalDataInMegaBytes (\s a -> s {_dtpTotalDataInMegaBytes = a})

instance FromXML DataTransferProgress where
  parseXML x =
    DataTransferProgress'
      <$> (x .@? "Status")
      <*> (x .@? "EstimatedTimeToCompletionInSeconds")
      <*> (x .@? "DataTransferredInMegaBytes")
      <*> (x .@? "CurrentRateInMegaBytesPerSecond")
      <*> (x .@? "ElapsedTimeInSeconds")
      <*> (x .@? "TotalDataInMegaBytes")

instance Hashable DataTransferProgress

instance NFData DataTransferProgress
