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
-- Module      : Network.AWS.CloudHSM.DescribeHSM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
--
-- Retrieves information about an HSM. You can identify the HSM by its ARN or its serial number.
module Network.AWS.CloudHSM.DescribeHSM
  ( -- * Creating a Request
    describeHSM,
    DescribeHSM,

    -- * Request Lenses
    dhsmHSMSerialNumber,
    dhsmHSMARN,

    -- * Destructuring the Response
    describeHSMResponse,
    DescribeHSMResponse,

    -- * Response Lenses
    drsSubscriptionStartDate,
    drsIAMRoleARN,
    drsStatus,
    drsPartitions,
    drsStatusDetails,
    drsEniIP,
    drsSubscriptionType,
    drsServerCertLastUpdated,
    drsEniId,
    drsAvailabilityZone,
    drsSSHPublicKey,
    drsHSMType,
    drsSubnetId,
    drsVendorName,
    drsServerCertURI,
    drsHSMARN,
    drsSerialNumber,
    drsSSHKeyLastUpdated,
    drsSubscriptionEndDate,
    drsVPCId,
    drsSoftwareVersion,
    drsResponseStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'DescribeHsm' operation.
--
--
--
-- /See:/ 'describeHSM' smart constructor.
data DescribeHSM = DescribeHSM'
  { _dhsmHSMSerialNumber ::
      !(Maybe Text),
    _dhsmHSMARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeHSM' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhsmHSMSerialNumber' - The serial number of the HSM. Either the @HsmArn@ or the @HsmSerialNumber@ parameter must be specified.
--
-- * 'dhsmHSMARN' - The ARN of the HSM. Either the @HsmArn@ or the @SerialNumber@ parameter must be specified.
describeHSM ::
  DescribeHSM
describeHSM =
  DescribeHSM'
    { _dhsmHSMSerialNumber = Nothing,
      _dhsmHSMARN = Nothing
    }

-- | The serial number of the HSM. Either the @HsmArn@ or the @HsmSerialNumber@ parameter must be specified.
dhsmHSMSerialNumber :: Lens' DescribeHSM (Maybe Text)
dhsmHSMSerialNumber = lens _dhsmHSMSerialNumber (\s a -> s {_dhsmHSMSerialNumber = a})

-- | The ARN of the HSM. Either the @HsmArn@ or the @SerialNumber@ parameter must be specified.
dhsmHSMARN :: Lens' DescribeHSM (Maybe Text)
dhsmHSMARN = lens _dhsmHSMARN (\s a -> s {_dhsmHSMARN = a})

instance AWSRequest DescribeHSM where
  type Rs DescribeHSM = DescribeHSMResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          DescribeHSMResponse'
            <$> (x .?> "SubscriptionStartDate")
            <*> (x .?> "IamRoleArn")
            <*> (x .?> "Status")
            <*> (x .?> "Partitions" .!@ mempty)
            <*> (x .?> "StatusDetails")
            <*> (x .?> "EniIp")
            <*> (x .?> "SubscriptionType")
            <*> (x .?> "ServerCertLastUpdated")
            <*> (x .?> "EniId")
            <*> (x .?> "AvailabilityZone")
            <*> (x .?> "SshPublicKey")
            <*> (x .?> "HsmType")
            <*> (x .?> "SubnetId")
            <*> (x .?> "VendorName")
            <*> (x .?> "ServerCertUri")
            <*> (x .?> "HsmArn")
            <*> (x .?> "SerialNumber")
            <*> (x .?> "SshKeyLastUpdated")
            <*> (x .?> "SubscriptionEndDate")
            <*> (x .?> "VpcId")
            <*> (x .?> "SoftwareVersion")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeHSM

instance NFData DescribeHSM

instance ToHeaders DescribeHSM where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CloudHsmFrontendService.DescribeHsm" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeHSM where
  toJSON DescribeHSM' {..} =
    object
      ( catMaybes
          [ ("HsmSerialNumber" .=) <$> _dhsmHSMSerialNumber,
            ("HsmArn" .=) <$> _dhsmHSMARN
          ]
      )

instance ToPath DescribeHSM where
  toPath = const "/"

instance ToQuery DescribeHSM where
  toQuery = const mempty

-- | Contains the output of the 'DescribeHsm' operation.
--
--
--
-- /See:/ 'describeHSMResponse' smart constructor.
data DescribeHSMResponse = DescribeHSMResponse'
  { _drsSubscriptionStartDate ::
      !(Maybe Text),
    _drsIAMRoleARN :: !(Maybe Text),
    _drsStatus ::
      !(Maybe HSMStatus),
    _drsPartitions ::
      !(Maybe [Text]),
    _drsStatusDetails ::
      !(Maybe Text),
    _drsEniIP :: !(Maybe Text),
    _drsSubscriptionType ::
      !(Maybe SubscriptionType),
    _drsServerCertLastUpdated ::
      !(Maybe Text),
    _drsEniId :: !(Maybe Text),
    _drsAvailabilityZone ::
      !(Maybe Text),
    _drsSSHPublicKey ::
      !(Maybe Text),
    _drsHSMType :: !(Maybe Text),
    _drsSubnetId :: !(Maybe Text),
    _drsVendorName :: !(Maybe Text),
    _drsServerCertURI ::
      !(Maybe Text),
    _drsHSMARN :: !(Maybe Text),
    _drsSerialNumber ::
      !(Maybe Text),
    _drsSSHKeyLastUpdated ::
      !(Maybe Text),
    _drsSubscriptionEndDate ::
      !(Maybe Text),
    _drsVPCId :: !(Maybe Text),
    _drsSoftwareVersion ::
      !(Maybe Text),
    _drsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeHSMResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsSubscriptionStartDate' - The subscription start date.
--
-- * 'drsIAMRoleARN' - The ARN of the IAM role assigned to the HSM.
--
-- * 'drsStatus' - The status of the HSM.
--
-- * 'drsPartitions' - The list of partitions on the HSM.
--
-- * 'drsStatusDetails' - Contains additional information about the status of the HSM.
--
-- * 'drsEniIP' - The IP address assigned to the HSM's ENI.
--
-- * 'drsSubscriptionType' - Undocumented member.
--
-- * 'drsServerCertLastUpdated' - The date and time that the server certificate was last updated.
--
-- * 'drsEniId' - The identifier of the elastic network interface (ENI) attached to the HSM.
--
-- * 'drsAvailabilityZone' - The Availability Zone that the HSM is in.
--
-- * 'drsSSHPublicKey' - The public SSH key.
--
-- * 'drsHSMType' - The HSM model type.
--
-- * 'drsSubnetId' - The identifier of the subnet that the HSM is in.
--
-- * 'drsVendorName' - The name of the HSM vendor.
--
-- * 'drsServerCertURI' - The URI of the certificate server.
--
-- * 'drsHSMARN' - The ARN of the HSM.
--
-- * 'drsSerialNumber' - The serial number of the HSM.
--
-- * 'drsSSHKeyLastUpdated' - The date and time that the SSH key was last updated.
--
-- * 'drsSubscriptionEndDate' - The subscription end date.
--
-- * 'drsVPCId' - The identifier of the VPC that the HSM is in.
--
-- * 'drsSoftwareVersion' - The HSM software version.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeHSMResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeHSMResponse
describeHSMResponse pResponseStatus_ =
  DescribeHSMResponse'
    { _drsSubscriptionStartDate =
        Nothing,
      _drsIAMRoleARN = Nothing,
      _drsStatus = Nothing,
      _drsPartitions = Nothing,
      _drsStatusDetails = Nothing,
      _drsEniIP = Nothing,
      _drsSubscriptionType = Nothing,
      _drsServerCertLastUpdated = Nothing,
      _drsEniId = Nothing,
      _drsAvailabilityZone = Nothing,
      _drsSSHPublicKey = Nothing,
      _drsHSMType = Nothing,
      _drsSubnetId = Nothing,
      _drsVendorName = Nothing,
      _drsServerCertURI = Nothing,
      _drsHSMARN = Nothing,
      _drsSerialNumber = Nothing,
      _drsSSHKeyLastUpdated = Nothing,
      _drsSubscriptionEndDate = Nothing,
      _drsVPCId = Nothing,
      _drsSoftwareVersion = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The subscription start date.
drsSubscriptionStartDate :: Lens' DescribeHSMResponse (Maybe Text)
drsSubscriptionStartDate = lens _drsSubscriptionStartDate (\s a -> s {_drsSubscriptionStartDate = a})

-- | The ARN of the IAM role assigned to the HSM.
drsIAMRoleARN :: Lens' DescribeHSMResponse (Maybe Text)
drsIAMRoleARN = lens _drsIAMRoleARN (\s a -> s {_drsIAMRoleARN = a})

-- | The status of the HSM.
drsStatus :: Lens' DescribeHSMResponse (Maybe HSMStatus)
drsStatus = lens _drsStatus (\s a -> s {_drsStatus = a})

-- | The list of partitions on the HSM.
drsPartitions :: Lens' DescribeHSMResponse [Text]
drsPartitions = lens _drsPartitions (\s a -> s {_drsPartitions = a}) . _Default . _Coerce

-- | Contains additional information about the status of the HSM.
drsStatusDetails :: Lens' DescribeHSMResponse (Maybe Text)
drsStatusDetails = lens _drsStatusDetails (\s a -> s {_drsStatusDetails = a})

-- | The IP address assigned to the HSM's ENI.
drsEniIP :: Lens' DescribeHSMResponse (Maybe Text)
drsEniIP = lens _drsEniIP (\s a -> s {_drsEniIP = a})

-- | Undocumented member.
drsSubscriptionType :: Lens' DescribeHSMResponse (Maybe SubscriptionType)
drsSubscriptionType = lens _drsSubscriptionType (\s a -> s {_drsSubscriptionType = a})

-- | The date and time that the server certificate was last updated.
drsServerCertLastUpdated :: Lens' DescribeHSMResponse (Maybe Text)
drsServerCertLastUpdated = lens _drsServerCertLastUpdated (\s a -> s {_drsServerCertLastUpdated = a})

-- | The identifier of the elastic network interface (ENI) attached to the HSM.
drsEniId :: Lens' DescribeHSMResponse (Maybe Text)
drsEniId = lens _drsEniId (\s a -> s {_drsEniId = a})

-- | The Availability Zone that the HSM is in.
drsAvailabilityZone :: Lens' DescribeHSMResponse (Maybe Text)
drsAvailabilityZone = lens _drsAvailabilityZone (\s a -> s {_drsAvailabilityZone = a})

-- | The public SSH key.
drsSSHPublicKey :: Lens' DescribeHSMResponse (Maybe Text)
drsSSHPublicKey = lens _drsSSHPublicKey (\s a -> s {_drsSSHPublicKey = a})

-- | The HSM model type.
drsHSMType :: Lens' DescribeHSMResponse (Maybe Text)
drsHSMType = lens _drsHSMType (\s a -> s {_drsHSMType = a})

-- | The identifier of the subnet that the HSM is in.
drsSubnetId :: Lens' DescribeHSMResponse (Maybe Text)
drsSubnetId = lens _drsSubnetId (\s a -> s {_drsSubnetId = a})

-- | The name of the HSM vendor.
drsVendorName :: Lens' DescribeHSMResponse (Maybe Text)
drsVendorName = lens _drsVendorName (\s a -> s {_drsVendorName = a})

-- | The URI of the certificate server.
drsServerCertURI :: Lens' DescribeHSMResponse (Maybe Text)
drsServerCertURI = lens _drsServerCertURI (\s a -> s {_drsServerCertURI = a})

-- | The ARN of the HSM.
drsHSMARN :: Lens' DescribeHSMResponse (Maybe Text)
drsHSMARN = lens _drsHSMARN (\s a -> s {_drsHSMARN = a})

-- | The serial number of the HSM.
drsSerialNumber :: Lens' DescribeHSMResponse (Maybe Text)
drsSerialNumber = lens _drsSerialNumber (\s a -> s {_drsSerialNumber = a})

-- | The date and time that the SSH key was last updated.
drsSSHKeyLastUpdated :: Lens' DescribeHSMResponse (Maybe Text)
drsSSHKeyLastUpdated = lens _drsSSHKeyLastUpdated (\s a -> s {_drsSSHKeyLastUpdated = a})

-- | The subscription end date.
drsSubscriptionEndDate :: Lens' DescribeHSMResponse (Maybe Text)
drsSubscriptionEndDate = lens _drsSubscriptionEndDate (\s a -> s {_drsSubscriptionEndDate = a})

-- | The identifier of the VPC that the HSM is in.
drsVPCId :: Lens' DescribeHSMResponse (Maybe Text)
drsVPCId = lens _drsVPCId (\s a -> s {_drsVPCId = a})

-- | The HSM software version.
drsSoftwareVersion :: Lens' DescribeHSMResponse (Maybe Text)
drsSoftwareVersion = lens _drsSoftwareVersion (\s a -> s {_drsSoftwareVersion = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeHSMResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeHSMResponse
