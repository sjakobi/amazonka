{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.CreateJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for a Snow device. If you're creating a job for a node in a cluster, you only need to provide the @clusterId@ value; the other job attributes are inherited from the cluster.
module Network.AWS.Snowball.CreateJob
  ( -- * Creating a Request
    createJob,
    CreateJob,

    -- * Request Lenses
    cjClusterId,
    cjRoleARN,
    cjShippingOption,
    cjDeviceConfiguration,
    cjKMSKeyARN,
    cjJobType,
    cjResources,
    cjTaxDocuments,
    cjSnowballCapacityPreference,
    cjSnowballType,
    cjDescription,
    cjAddressId,
    cjForwardingAddressId,
    cjNotification,

    -- * Destructuring the Response
    createJobResponse,
    CreateJobResponse,

    -- * Response Lenses
    crsJobId,
    crsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'createJob' smart constructor.
data CreateJob = CreateJob'
  { _cjClusterId ::
      !(Maybe Text),
    _cjRoleARN :: !(Maybe Text),
    _cjShippingOption :: !(Maybe ShippingOption),
    _cjDeviceConfiguration ::
      !(Maybe DeviceConfiguration),
    _cjKMSKeyARN :: !(Maybe Text),
    _cjJobType :: !(Maybe JobType),
    _cjResources :: !(Maybe JobResource),
    _cjTaxDocuments :: !(Maybe TaxDocuments),
    _cjSnowballCapacityPreference ::
      !(Maybe SnowballCapacity),
    _cjSnowballType :: !(Maybe SnowballType),
    _cjDescription :: !(Maybe Text),
    _cjAddressId :: !(Maybe Text),
    _cjForwardingAddressId :: !(Maybe Text),
    _cjNotification :: !(Maybe Notification)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjClusterId' - The ID of a cluster. If you're creating a job for a node in a cluster, you need to provide only this @clusterId@ value. The other job attributes are inherited from the cluster.
--
-- * 'cjRoleARN' - The @RoleARN@ that you want to associate with this job. @RoleArn@ s are created using the <https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html CreateRole> AWS Identity and Access Management (IAM) API action.
--
-- * 'cjShippingOption' - The shipping speed for this job. This speed doesn't dictate how soon you'll get the Snow device, rather it represents how quickly the Snow device moves to its destination while in transit. Regional shipping speeds are as follows:     * In Australia, you have access to express shipping. Typically, Snow devices shipped express are delivered in about a day.     * In the European Union (EU), you have access to express shipping. Typically, Snow devices shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.     * In India, Snow devices are delivered in one to seven days.     * In the US, you have access to one-day shipping and two-day shipping.
--
-- * 'cjDeviceConfiguration' - Defines the device configuration for an AWS Snowcone job.
--
-- * 'cjKMSKeyARN' - The @KmsKeyARN@ that you want to associate with this job. @KmsKeyARN@ s are created using the <https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html CreateKey> AWS Key Management Service (KMS) API action.
--
-- * 'cjJobType' - Defines the type of job that you're creating.
--
-- * 'cjResources' - Defines the Amazon S3 buckets associated with this job. With @IMPORT@ jobs, you specify the bucket or buckets that your transferred data will be imported into. With @EXPORT@ jobs, you specify the bucket or buckets that your transferred data will be exported from. Optionally, you can also specify a @KeyRange@ value. If you choose to export a range, you define the length of the range by providing either an inclusive @BeginMarker@ value, an inclusive @EndMarker@ value, or both. Ranges are UTF-8 binary sorted.
--
-- * 'cjTaxDocuments' - The tax documents required in your AWS Region.
--
-- * 'cjSnowballCapacityPreference' - If your job is being created in one of the US regions, you have the option of specifying what size Snow device you'd like for this job. In all other regions, Snowballs come with 80 TB in storage capacity.
--
-- * 'cjSnowballType' - The type of AWS Snow Family device to use for this job.  The type of AWS Snow device to use for this job. Currently, the only supported device type for cluster jobs is @EDGE@ . For more information, see <https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html Snowball Edge Device Options> in the Snowball Edge Developer Guide.
--
-- * 'cjDescription' - Defines an optional description of this specific job, for example @Important Photos 2016-08-11@ .
--
-- * 'cjAddressId' - The ID for the address that you want the Snow device shipped to.
--
-- * 'cjForwardingAddressId' - The forwarding address ID for a job. This field is not supported in most regions.
--
-- * 'cjNotification' - Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for this job.
createJob ::
  CreateJob
createJob =
  CreateJob'
    { _cjClusterId = Nothing,
      _cjRoleARN = Nothing,
      _cjShippingOption = Nothing,
      _cjDeviceConfiguration = Nothing,
      _cjKMSKeyARN = Nothing,
      _cjJobType = Nothing,
      _cjResources = Nothing,
      _cjTaxDocuments = Nothing,
      _cjSnowballCapacityPreference = Nothing,
      _cjSnowballType = Nothing,
      _cjDescription = Nothing,
      _cjAddressId = Nothing,
      _cjForwardingAddressId = Nothing,
      _cjNotification = Nothing
    }

-- | The ID of a cluster. If you're creating a job for a node in a cluster, you need to provide only this @clusterId@ value. The other job attributes are inherited from the cluster.
cjClusterId :: Lens' CreateJob (Maybe Text)
cjClusterId = lens _cjClusterId (\s a -> s {_cjClusterId = a})

-- | The @RoleARN@ that you want to associate with this job. @RoleArn@ s are created using the <https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html CreateRole> AWS Identity and Access Management (IAM) API action.
cjRoleARN :: Lens' CreateJob (Maybe Text)
cjRoleARN = lens _cjRoleARN (\s a -> s {_cjRoleARN = a})

-- | The shipping speed for this job. This speed doesn't dictate how soon you'll get the Snow device, rather it represents how quickly the Snow device moves to its destination while in transit. Regional shipping speeds are as follows:     * In Australia, you have access to express shipping. Typically, Snow devices shipped express are delivered in about a day.     * In the European Union (EU), you have access to express shipping. Typically, Snow devices shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.     * In India, Snow devices are delivered in one to seven days.     * In the US, you have access to one-day shipping and two-day shipping.
cjShippingOption :: Lens' CreateJob (Maybe ShippingOption)
cjShippingOption = lens _cjShippingOption (\s a -> s {_cjShippingOption = a})

-- | Defines the device configuration for an AWS Snowcone job.
cjDeviceConfiguration :: Lens' CreateJob (Maybe DeviceConfiguration)
cjDeviceConfiguration = lens _cjDeviceConfiguration (\s a -> s {_cjDeviceConfiguration = a})

-- | The @KmsKeyARN@ that you want to associate with this job. @KmsKeyARN@ s are created using the <https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html CreateKey> AWS Key Management Service (KMS) API action.
cjKMSKeyARN :: Lens' CreateJob (Maybe Text)
cjKMSKeyARN = lens _cjKMSKeyARN (\s a -> s {_cjKMSKeyARN = a})

-- | Defines the type of job that you're creating.
cjJobType :: Lens' CreateJob (Maybe JobType)
cjJobType = lens _cjJobType (\s a -> s {_cjJobType = a})

-- | Defines the Amazon S3 buckets associated with this job. With @IMPORT@ jobs, you specify the bucket or buckets that your transferred data will be imported into. With @EXPORT@ jobs, you specify the bucket or buckets that your transferred data will be exported from. Optionally, you can also specify a @KeyRange@ value. If you choose to export a range, you define the length of the range by providing either an inclusive @BeginMarker@ value, an inclusive @EndMarker@ value, or both. Ranges are UTF-8 binary sorted.
cjResources :: Lens' CreateJob (Maybe JobResource)
cjResources = lens _cjResources (\s a -> s {_cjResources = a})

-- | The tax documents required in your AWS Region.
cjTaxDocuments :: Lens' CreateJob (Maybe TaxDocuments)
cjTaxDocuments = lens _cjTaxDocuments (\s a -> s {_cjTaxDocuments = a})

-- | If your job is being created in one of the US regions, you have the option of specifying what size Snow device you'd like for this job. In all other regions, Snowballs come with 80 TB in storage capacity.
cjSnowballCapacityPreference :: Lens' CreateJob (Maybe SnowballCapacity)
cjSnowballCapacityPreference = lens _cjSnowballCapacityPreference (\s a -> s {_cjSnowballCapacityPreference = a})

-- | The type of AWS Snow Family device to use for this job.  The type of AWS Snow device to use for this job. Currently, the only supported device type for cluster jobs is @EDGE@ . For more information, see <https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html Snowball Edge Device Options> in the Snowball Edge Developer Guide.
cjSnowballType :: Lens' CreateJob (Maybe SnowballType)
cjSnowballType = lens _cjSnowballType (\s a -> s {_cjSnowballType = a})

-- | Defines an optional description of this specific job, for example @Important Photos 2016-08-11@ .
cjDescription :: Lens' CreateJob (Maybe Text)
cjDescription = lens _cjDescription (\s a -> s {_cjDescription = a})

-- | The ID for the address that you want the Snow device shipped to.
cjAddressId :: Lens' CreateJob (Maybe Text)
cjAddressId = lens _cjAddressId (\s a -> s {_cjAddressId = a})

-- | The forwarding address ID for a job. This field is not supported in most regions.
cjForwardingAddressId :: Lens' CreateJob (Maybe Text)
cjForwardingAddressId = lens _cjForwardingAddressId (\s a -> s {_cjForwardingAddressId = a})

-- | Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for this job.
cjNotification :: Lens' CreateJob (Maybe Notification)
cjNotification = lens _cjNotification (\s a -> s {_cjNotification = a})

instance AWSRequest CreateJob where
  type Rs CreateJob = CreateJobResponse
  request = postJSON snowball
  response =
    receiveJSON
      ( \s h x ->
          CreateJobResponse'
            <$> (x .?> "JobId") <*> (pure (fromEnum s))
      )

instance Hashable CreateJob

instance NFData CreateJob

instance ToHeaders CreateJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.CreateJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateJob where
  toJSON CreateJob' {..} =
    object
      ( catMaybes
          [ ("ClusterId" .=) <$> _cjClusterId,
            ("RoleARN" .=) <$> _cjRoleARN,
            ("ShippingOption" .=) <$> _cjShippingOption,
            ("DeviceConfiguration" .=)
              <$> _cjDeviceConfiguration,
            ("KmsKeyARN" .=) <$> _cjKMSKeyARN,
            ("JobType" .=) <$> _cjJobType,
            ("Resources" .=) <$> _cjResources,
            ("TaxDocuments" .=) <$> _cjTaxDocuments,
            ("SnowballCapacityPreference" .=)
              <$> _cjSnowballCapacityPreference,
            ("SnowballType" .=) <$> _cjSnowballType,
            ("Description" .=) <$> _cjDescription,
            ("AddressId" .=) <$> _cjAddressId,
            ("ForwardingAddressId" .=)
              <$> _cjForwardingAddressId,
            ("Notification" .=) <$> _cjNotification
          ]
      )

instance ToPath CreateJob where
  toPath = const "/"

instance ToQuery CreateJob where
  toQuery = const mempty

-- | /See:/ 'createJobResponse' smart constructor.
data CreateJobResponse = CreateJobResponse'
  { _crsJobId ::
      !(Maybe Text),
    _crsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsJobId' - The automatically generated ID for a job, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
--
-- * 'crsResponseStatus' - -- | The response status code.
createJobResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateJobResponse
createJobResponse pResponseStatus_ =
  CreateJobResponse'
    { _crsJobId = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | The automatically generated ID for a job, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
crsJobId :: Lens' CreateJobResponse (Maybe Text)
crsJobId = lens _crsJobId (\s a -> s {_crsJobId = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateJobResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateJobResponse
