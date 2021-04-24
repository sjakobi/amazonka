{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.JobMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.JobMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Snowball.Types.DataTransfer
import Network.AWS.Snowball.Types.DeviceConfiguration
import Network.AWS.Snowball.Types.JobLogs
import Network.AWS.Snowball.Types.JobResource
import Network.AWS.Snowball.Types.JobState
import Network.AWS.Snowball.Types.JobType
import Network.AWS.Snowball.Types.Notification
import Network.AWS.Snowball.Types.ShippingDetails
import Network.AWS.Snowball.Types.SnowballCapacity
import Network.AWS.Snowball.Types.SnowballType
import Network.AWS.Snowball.Types.TaxDocuments

-- | Contains information about a specific job including shipping information, job status, and other important metadata. This information is returned as a part of the response syntax of the @DescribeJob@ action.
--
--
--
-- /See:/ 'jobMetadata' smart constructor.
data JobMetadata = JobMetadata'
  { _jmClusterId ::
      !(Maybe Text),
    _jmRoleARN :: !(Maybe Text),
    _jmJobState :: !(Maybe JobState),
    _jmDeviceConfiguration ::
      !(Maybe DeviceConfiguration),
    _jmCreationDate :: !(Maybe POSIX),
    _jmKMSKeyARN :: !(Maybe Text),
    _jmJobType :: !(Maybe JobType),
    _jmResources :: !(Maybe JobResource),
    _jmTaxDocuments :: !(Maybe TaxDocuments),
    _jmSnowballCapacityPreference ::
      !(Maybe SnowballCapacity),
    _jmSnowballType :: !(Maybe SnowballType),
    _jmDataTransferProgress ::
      !(Maybe DataTransfer),
    _jmDescription :: !(Maybe Text),
    _jmAddressId :: !(Maybe Text),
    _jmForwardingAddressId :: !(Maybe Text),
    _jmShippingDetails :: !(Maybe ShippingDetails),
    _jmNotification :: !(Maybe Notification),
    _jmJobLogInfo :: !(Maybe JobLogs),
    _jmJobId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jmClusterId' - The 39-character ID for the cluster, for example @CID123e4567-e89b-12d3-a456-426655440000@ .
--
-- * 'jmRoleARN' - The role ARN associated with this job. This ARN was created using the <https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html CreateRole> API action in AWS Identity and Access Management (IAM).
--
-- * 'jmJobState' - The current status of the jobs.
--
-- * 'jmDeviceConfiguration' - Undocumented member.
--
-- * 'jmCreationDate' - The creation date for this job.
--
-- * 'jmKMSKeyARN' - The Amazon Resource Name (ARN) for the AWS Key Management Service (AWS KMS) key associated with this job. This ARN was created using the <https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html CreateKey> API action in AWS KMS.
--
-- * 'jmJobType' - The type of job.
--
-- * 'jmResources' - An array of @S3Resource@ objects. Each @S3Resource@ object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.
--
-- * 'jmTaxDocuments' - The metadata associated with the tax documents required in your AWS Region.
--
-- * 'jmSnowballCapacityPreference' - The Snow device capacity preference for this job, specified at job creation. In US regions, you can choose between 50 TB and 80 TB Snowballs. All other regions use 80 TB capacity Snowballs.
--
-- * 'jmSnowballType' - The type of device used with this job.
--
-- * 'jmDataTransferProgress' - A value that defines the real-time status of a Snow device's data transfer while the device is at AWS. This data is only available while a job has a @JobState@ value of @InProgress@ , for both import and export jobs.
--
-- * 'jmDescription' - The description of the job, provided at job creation.
--
-- * 'jmAddressId' - The ID for the address that you want the Snow device shipped to.
--
-- * 'jmForwardingAddressId' - The ID of the address that you want a job shipped to, after it will be shipped to its primary address. This field is not supported in most regions.
--
-- * 'jmShippingDetails' - A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.
--
-- * 'jmNotification' - The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The @Notification@ object is returned as a part of the response syntax of the @DescribeJob@ action in the @JobMetadata@ data type.
--
-- * 'jmJobLogInfo' - Links to Amazon S3 presigned URLs for the job report and logs. For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snow device for your job part is being delivered to you.
--
-- * 'jmJobId' - The automatically generated ID for a job, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
jobMetadata ::
  JobMetadata
jobMetadata =
  JobMetadata'
    { _jmClusterId = Nothing,
      _jmRoleARN = Nothing,
      _jmJobState = Nothing,
      _jmDeviceConfiguration = Nothing,
      _jmCreationDate = Nothing,
      _jmKMSKeyARN = Nothing,
      _jmJobType = Nothing,
      _jmResources = Nothing,
      _jmTaxDocuments = Nothing,
      _jmSnowballCapacityPreference = Nothing,
      _jmSnowballType = Nothing,
      _jmDataTransferProgress = Nothing,
      _jmDescription = Nothing,
      _jmAddressId = Nothing,
      _jmForwardingAddressId = Nothing,
      _jmShippingDetails = Nothing,
      _jmNotification = Nothing,
      _jmJobLogInfo = Nothing,
      _jmJobId = Nothing
    }

-- | The 39-character ID for the cluster, for example @CID123e4567-e89b-12d3-a456-426655440000@ .
jmClusterId :: Lens' JobMetadata (Maybe Text)
jmClusterId = lens _jmClusterId (\s a -> s {_jmClusterId = a})

-- | The role ARN associated with this job. This ARN was created using the <https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html CreateRole> API action in AWS Identity and Access Management (IAM).
jmRoleARN :: Lens' JobMetadata (Maybe Text)
jmRoleARN = lens _jmRoleARN (\s a -> s {_jmRoleARN = a})

-- | The current status of the jobs.
jmJobState :: Lens' JobMetadata (Maybe JobState)
jmJobState = lens _jmJobState (\s a -> s {_jmJobState = a})

-- | Undocumented member.
jmDeviceConfiguration :: Lens' JobMetadata (Maybe DeviceConfiguration)
jmDeviceConfiguration = lens _jmDeviceConfiguration (\s a -> s {_jmDeviceConfiguration = a})

-- | The creation date for this job.
jmCreationDate :: Lens' JobMetadata (Maybe UTCTime)
jmCreationDate = lens _jmCreationDate (\s a -> s {_jmCreationDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) for the AWS Key Management Service (AWS KMS) key associated with this job. This ARN was created using the <https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html CreateKey> API action in AWS KMS.
jmKMSKeyARN :: Lens' JobMetadata (Maybe Text)
jmKMSKeyARN = lens _jmKMSKeyARN (\s a -> s {_jmKMSKeyARN = a})

-- | The type of job.
jmJobType :: Lens' JobMetadata (Maybe JobType)
jmJobType = lens _jmJobType (\s a -> s {_jmJobType = a})

-- | An array of @S3Resource@ objects. Each @S3Resource@ object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.
jmResources :: Lens' JobMetadata (Maybe JobResource)
jmResources = lens _jmResources (\s a -> s {_jmResources = a})

-- | The metadata associated with the tax documents required in your AWS Region.
jmTaxDocuments :: Lens' JobMetadata (Maybe TaxDocuments)
jmTaxDocuments = lens _jmTaxDocuments (\s a -> s {_jmTaxDocuments = a})

-- | The Snow device capacity preference for this job, specified at job creation. In US regions, you can choose between 50 TB and 80 TB Snowballs. All other regions use 80 TB capacity Snowballs.
jmSnowballCapacityPreference :: Lens' JobMetadata (Maybe SnowballCapacity)
jmSnowballCapacityPreference = lens _jmSnowballCapacityPreference (\s a -> s {_jmSnowballCapacityPreference = a})

-- | The type of device used with this job.
jmSnowballType :: Lens' JobMetadata (Maybe SnowballType)
jmSnowballType = lens _jmSnowballType (\s a -> s {_jmSnowballType = a})

-- | A value that defines the real-time status of a Snow device's data transfer while the device is at AWS. This data is only available while a job has a @JobState@ value of @InProgress@ , for both import and export jobs.
jmDataTransferProgress :: Lens' JobMetadata (Maybe DataTransfer)
jmDataTransferProgress = lens _jmDataTransferProgress (\s a -> s {_jmDataTransferProgress = a})

-- | The description of the job, provided at job creation.
jmDescription :: Lens' JobMetadata (Maybe Text)
jmDescription = lens _jmDescription (\s a -> s {_jmDescription = a})

-- | The ID for the address that you want the Snow device shipped to.
jmAddressId :: Lens' JobMetadata (Maybe Text)
jmAddressId = lens _jmAddressId (\s a -> s {_jmAddressId = a})

-- | The ID of the address that you want a job shipped to, after it will be shipped to its primary address. This field is not supported in most regions.
jmForwardingAddressId :: Lens' JobMetadata (Maybe Text)
jmForwardingAddressId = lens _jmForwardingAddressId (\s a -> s {_jmForwardingAddressId = a})

-- | A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.
jmShippingDetails :: Lens' JobMetadata (Maybe ShippingDetails)
jmShippingDetails = lens _jmShippingDetails (\s a -> s {_jmShippingDetails = a})

-- | The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The @Notification@ object is returned as a part of the response syntax of the @DescribeJob@ action in the @JobMetadata@ data type.
jmNotification :: Lens' JobMetadata (Maybe Notification)
jmNotification = lens _jmNotification (\s a -> s {_jmNotification = a})

-- | Links to Amazon S3 presigned URLs for the job report and logs. For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snow device for your job part is being delivered to you.
jmJobLogInfo :: Lens' JobMetadata (Maybe JobLogs)
jmJobLogInfo = lens _jmJobLogInfo (\s a -> s {_jmJobLogInfo = a})

-- | The automatically generated ID for a job, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
jmJobId :: Lens' JobMetadata (Maybe Text)
jmJobId = lens _jmJobId (\s a -> s {_jmJobId = a})

instance FromJSON JobMetadata where
  parseJSON =
    withObject
      "JobMetadata"
      ( \x ->
          JobMetadata'
            <$> (x .:? "ClusterId")
            <*> (x .:? "RoleARN")
            <*> (x .:? "JobState")
            <*> (x .:? "DeviceConfiguration")
            <*> (x .:? "CreationDate")
            <*> (x .:? "KmsKeyARN")
            <*> (x .:? "JobType")
            <*> (x .:? "Resources")
            <*> (x .:? "TaxDocuments")
            <*> (x .:? "SnowballCapacityPreference")
            <*> (x .:? "SnowballType")
            <*> (x .:? "DataTransferProgress")
            <*> (x .:? "Description")
            <*> (x .:? "AddressId")
            <*> (x .:? "ForwardingAddressId")
            <*> (x .:? "ShippingDetails")
            <*> (x .:? "Notification")
            <*> (x .:? "JobLogInfo")
            <*> (x .:? "JobId")
      )

instance Hashable JobMetadata

instance NFData JobMetadata
