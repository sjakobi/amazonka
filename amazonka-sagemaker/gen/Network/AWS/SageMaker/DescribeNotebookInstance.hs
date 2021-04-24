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
-- Module      : Network.AWS.SageMaker.DescribeNotebookInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a notebook instance.
module Network.AWS.SageMaker.DescribeNotebookInstance
  ( -- * Creating a Request
    describeNotebookInstance,
    DescribeNotebookInstance,

    -- * Request Lenses
    dNotebookInstanceName,

    -- * Destructuring the Response
    describeNotebookInstanceResponse,
    DescribeNotebookInstanceResponse,

    -- * Response Lenses
    dnirrsNotebookInstanceName,
    dnirrsCreationTime,
    dnirrsAcceleratorTypes,
    dnirrsDefaultCodeRepository,
    dnirrsRoleARN,
    dnirrsInstanceType,
    dnirrsNotebookInstanceLifecycleConfigName,
    dnirrsAdditionalCodeRepositories,
    dnirrsSecurityGroups,
    dnirrsKMSKeyId,
    dnirrsVolumeSizeInGB,
    dnirrsFailureReason,
    dnirrsNetworkInterfaceId,
    dnirrsLastModifiedTime,
    dnirrsSubnetId,
    dnirrsURL,
    dnirrsNotebookInstanceARN,
    dnirrsDirectInternetAccess,
    dnirrsRootAccess,
    dnirrsResponseStatus,
    dnirrsNotebookInstanceStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeNotebookInstance' smart constructor.
newtype DescribeNotebookInstance = DescribeNotebookInstance'
  { _dNotebookInstanceName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeNotebookInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNotebookInstanceName' - The name of the notebook instance that you want information about.
describeNotebookInstance ::
  -- | 'dNotebookInstanceName'
  Text ->
  DescribeNotebookInstance
describeNotebookInstance pNotebookInstanceName_ =
  DescribeNotebookInstance'
    { _dNotebookInstanceName =
        pNotebookInstanceName_
    }

-- | The name of the notebook instance that you want information about.
dNotebookInstanceName :: Lens' DescribeNotebookInstance Text
dNotebookInstanceName = lens _dNotebookInstanceName (\s a -> s {_dNotebookInstanceName = a})

instance AWSRequest DescribeNotebookInstance where
  type
    Rs DescribeNotebookInstance =
      DescribeNotebookInstanceResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeNotebookInstanceResponse'
            <$> (x .?> "NotebookInstanceName")
            <*> (x .?> "CreationTime")
            <*> (x .?> "AcceleratorTypes" .!@ mempty)
            <*> (x .?> "DefaultCodeRepository")
            <*> (x .?> "RoleArn")
            <*> (x .?> "InstanceType")
            <*> (x .?> "NotebookInstanceLifecycleConfigName")
            <*> (x .?> "AdditionalCodeRepositories" .!@ mempty)
            <*> (x .?> "SecurityGroups" .!@ mempty)
            <*> (x .?> "KmsKeyId")
            <*> (x .?> "VolumeSizeInGB")
            <*> (x .?> "FailureReason")
            <*> (x .?> "NetworkInterfaceId")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "SubnetId")
            <*> (x .?> "Url")
            <*> (x .?> "NotebookInstanceArn")
            <*> (x .?> "DirectInternetAccess")
            <*> (x .?> "RootAccess")
            <*> (pure (fromEnum s))
            <*> (x .:> "NotebookInstanceStatus")
      )

instance Hashable DescribeNotebookInstance

instance NFData DescribeNotebookInstance

instance ToHeaders DescribeNotebookInstance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeNotebookInstance" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeNotebookInstance where
  toJSON DescribeNotebookInstance' {..} =
    object
      ( catMaybes
          [ Just
              ("NotebookInstanceName" .= _dNotebookInstanceName)
          ]
      )

instance ToPath DescribeNotebookInstance where
  toPath = const "/"

instance ToQuery DescribeNotebookInstance where
  toQuery = const mempty

-- | /See:/ 'describeNotebookInstanceResponse' smart constructor.
data DescribeNotebookInstanceResponse = DescribeNotebookInstanceResponse'
  { _dnirrsNotebookInstanceName ::
      !( Maybe
           Text
       ),
    _dnirrsCreationTime ::
      !( Maybe
           POSIX
       ),
    _dnirrsAcceleratorTypes ::
      !( Maybe
           [NotebookInstanceAcceleratorType]
       ),
    _dnirrsDefaultCodeRepository ::
      !( Maybe
           Text
       ),
    _dnirrsRoleARN ::
      !( Maybe
           Text
       ),
    _dnirrsInstanceType ::
      !( Maybe
           InstanceType
       ),
    _dnirrsNotebookInstanceLifecycleConfigName ::
      !( Maybe
           Text
       ),
    _dnirrsAdditionalCodeRepositories ::
      !( Maybe
           [Text]
       ),
    _dnirrsSecurityGroups ::
      !( Maybe
           [Text]
       ),
    _dnirrsKMSKeyId ::
      !( Maybe
           Text
       ),
    _dnirrsVolumeSizeInGB ::
      !( Maybe
           Nat
       ),
    _dnirrsFailureReason ::
      !( Maybe
           Text
       ),
    _dnirrsNetworkInterfaceId ::
      !( Maybe
           Text
       ),
    _dnirrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _dnirrsSubnetId ::
      !( Maybe
           Text
       ),
    _dnirrsURL ::
      !( Maybe
           Text
       ),
    _dnirrsNotebookInstanceARN ::
      !( Maybe
           Text
       ),
    _dnirrsDirectInternetAccess ::
      !( Maybe
           DirectInternetAccess
       ),
    _dnirrsRootAccess ::
      !( Maybe
           RootAccess
       ),
    _dnirrsResponseStatus ::
      !Int,
    _dnirrsNotebookInstanceStatus ::
      !NotebookInstanceStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeNotebookInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnirrsNotebookInstanceName' - The name of the Amazon SageMaker notebook instance.
--
-- * 'dnirrsCreationTime' - A timestamp. Use this parameter to return the time when the notebook instance was created
--
-- * 'dnirrsAcceleratorTypes' - A list of the Elastic Inference (EI) instance types associated with this notebook instance. Currently only one EI instance type can be associated with a notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker> .
--
-- * 'dnirrsDefaultCodeRepository' - The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
--
-- * 'dnirrsRoleARN' - The Amazon Resource Name (ARN) of the IAM role associated with the instance.
--
-- * 'dnirrsInstanceType' - The type of ML compute instance running on the notebook instance.
--
-- * 'dnirrsNotebookInstanceLifecycleConfigName' - Returns the name of a notebook instance lifecycle configuration. For information about notebook instance lifestyle configurations, see <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>
--
-- * 'dnirrsAdditionalCodeRepositories' - An array of up to three Git repositories associated with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
--
-- * 'dnirrsSecurityGroups' - The IDs of the VPC security groups.
--
-- * 'dnirrsKMSKeyId' - The AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it on the ML storage volume attached to the instance.
--
-- * 'dnirrsVolumeSizeInGB' - The size, in GB, of the ML storage volume attached to the notebook instance.
--
-- * 'dnirrsFailureReason' - If status is @Failed@ , the reason it failed.
--
-- * 'dnirrsNetworkInterfaceId' - The network interface IDs that Amazon SageMaker created at the time of creating the instance.
--
-- * 'dnirrsLastModifiedTime' - A timestamp. Use this parameter to retrieve the time when the notebook instance was last modified.
--
-- * 'dnirrsSubnetId' - The ID of the VPC subnet.
--
-- * 'dnirrsURL' - The URL that you use to connect to the Jupyter notebook that is running in your notebook instance.
--
-- * 'dnirrsNotebookInstanceARN' - The Amazon Resource Name (ARN) of the notebook instance.
--
-- * 'dnirrsDirectInternetAccess' - Describes whether Amazon SageMaker provides internet access to the notebook instance. If this value is set to /Disabled/ , the notebook instance does not have internet access, and cannot connect to Amazon SageMaker training and endpoint services. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default> .
--
-- * 'dnirrsRootAccess' - Whether root access is enabled or disabled for users of the notebook instance.
--
-- * 'dnirrsResponseStatus' - -- | The response status code.
--
-- * 'dnirrsNotebookInstanceStatus' - The status of the notebook instance.
describeNotebookInstanceResponse ::
  -- | 'dnirrsResponseStatus'
  Int ->
  -- | 'dnirrsNotebookInstanceStatus'
  NotebookInstanceStatus ->
  DescribeNotebookInstanceResponse
describeNotebookInstanceResponse
  pResponseStatus_
  pNotebookInstanceStatus_ =
    DescribeNotebookInstanceResponse'
      { _dnirrsNotebookInstanceName =
          Nothing,
        _dnirrsCreationTime = Nothing,
        _dnirrsAcceleratorTypes = Nothing,
        _dnirrsDefaultCodeRepository = Nothing,
        _dnirrsRoleARN = Nothing,
        _dnirrsInstanceType = Nothing,
        _dnirrsNotebookInstanceLifecycleConfigName =
          Nothing,
        _dnirrsAdditionalCodeRepositories =
          Nothing,
        _dnirrsSecurityGroups = Nothing,
        _dnirrsKMSKeyId = Nothing,
        _dnirrsVolumeSizeInGB = Nothing,
        _dnirrsFailureReason = Nothing,
        _dnirrsNetworkInterfaceId = Nothing,
        _dnirrsLastModifiedTime = Nothing,
        _dnirrsSubnetId = Nothing,
        _dnirrsURL = Nothing,
        _dnirrsNotebookInstanceARN = Nothing,
        _dnirrsDirectInternetAccess = Nothing,
        _dnirrsRootAccess = Nothing,
        _dnirrsResponseStatus = pResponseStatus_,
        _dnirrsNotebookInstanceStatus =
          pNotebookInstanceStatus_
      }

-- | The name of the Amazon SageMaker notebook instance.
dnirrsNotebookInstanceName :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsNotebookInstanceName = lens _dnirrsNotebookInstanceName (\s a -> s {_dnirrsNotebookInstanceName = a})

-- | A timestamp. Use this parameter to return the time when the notebook instance was created
dnirrsCreationTime :: Lens' DescribeNotebookInstanceResponse (Maybe UTCTime)
dnirrsCreationTime = lens _dnirrsCreationTime (\s a -> s {_dnirrsCreationTime = a}) . mapping _Time

-- | A list of the Elastic Inference (EI) instance types associated with this notebook instance. Currently only one EI instance type can be associated with a notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker> .
dnirrsAcceleratorTypes :: Lens' DescribeNotebookInstanceResponse [NotebookInstanceAcceleratorType]
dnirrsAcceleratorTypes = lens _dnirrsAcceleratorTypes (\s a -> s {_dnirrsAcceleratorTypes = a}) . _Default . _Coerce

-- | The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
dnirrsDefaultCodeRepository :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsDefaultCodeRepository = lens _dnirrsDefaultCodeRepository (\s a -> s {_dnirrsDefaultCodeRepository = a})

-- | The Amazon Resource Name (ARN) of the IAM role associated with the instance.
dnirrsRoleARN :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsRoleARN = lens _dnirrsRoleARN (\s a -> s {_dnirrsRoleARN = a})

-- | The type of ML compute instance running on the notebook instance.
dnirrsInstanceType :: Lens' DescribeNotebookInstanceResponse (Maybe InstanceType)
dnirrsInstanceType = lens _dnirrsInstanceType (\s a -> s {_dnirrsInstanceType = a})

-- | Returns the name of a notebook instance lifecycle configuration. For information about notebook instance lifestyle configurations, see <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>
dnirrsNotebookInstanceLifecycleConfigName :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsNotebookInstanceLifecycleConfigName = lens _dnirrsNotebookInstanceLifecycleConfigName (\s a -> s {_dnirrsNotebookInstanceLifecycleConfigName = a})

-- | An array of up to three Git repositories associated with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
dnirrsAdditionalCodeRepositories :: Lens' DescribeNotebookInstanceResponse [Text]
dnirrsAdditionalCodeRepositories = lens _dnirrsAdditionalCodeRepositories (\s a -> s {_dnirrsAdditionalCodeRepositories = a}) . _Default . _Coerce

-- | The IDs of the VPC security groups.
dnirrsSecurityGroups :: Lens' DescribeNotebookInstanceResponse [Text]
dnirrsSecurityGroups = lens _dnirrsSecurityGroups (\s a -> s {_dnirrsSecurityGroups = a}) . _Default . _Coerce

-- | The AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it on the ML storage volume attached to the instance.
dnirrsKMSKeyId :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsKMSKeyId = lens _dnirrsKMSKeyId (\s a -> s {_dnirrsKMSKeyId = a})

-- | The size, in GB, of the ML storage volume attached to the notebook instance.
dnirrsVolumeSizeInGB :: Lens' DescribeNotebookInstanceResponse (Maybe Natural)
dnirrsVolumeSizeInGB = lens _dnirrsVolumeSizeInGB (\s a -> s {_dnirrsVolumeSizeInGB = a}) . mapping _Nat

-- | If status is @Failed@ , the reason it failed.
dnirrsFailureReason :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsFailureReason = lens _dnirrsFailureReason (\s a -> s {_dnirrsFailureReason = a})

-- | The network interface IDs that Amazon SageMaker created at the time of creating the instance.
dnirrsNetworkInterfaceId :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsNetworkInterfaceId = lens _dnirrsNetworkInterfaceId (\s a -> s {_dnirrsNetworkInterfaceId = a})

-- | A timestamp. Use this parameter to retrieve the time when the notebook instance was last modified.
dnirrsLastModifiedTime :: Lens' DescribeNotebookInstanceResponse (Maybe UTCTime)
dnirrsLastModifiedTime = lens _dnirrsLastModifiedTime (\s a -> s {_dnirrsLastModifiedTime = a}) . mapping _Time

-- | The ID of the VPC subnet.
dnirrsSubnetId :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsSubnetId = lens _dnirrsSubnetId (\s a -> s {_dnirrsSubnetId = a})

-- | The URL that you use to connect to the Jupyter notebook that is running in your notebook instance.
dnirrsURL :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsURL = lens _dnirrsURL (\s a -> s {_dnirrsURL = a})

-- | The Amazon Resource Name (ARN) of the notebook instance.
dnirrsNotebookInstanceARN :: Lens' DescribeNotebookInstanceResponse (Maybe Text)
dnirrsNotebookInstanceARN = lens _dnirrsNotebookInstanceARN (\s a -> s {_dnirrsNotebookInstanceARN = a})

-- | Describes whether Amazon SageMaker provides internet access to the notebook instance. If this value is set to /Disabled/ , the notebook instance does not have internet access, and cannot connect to Amazon SageMaker training and endpoint services. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default> .
dnirrsDirectInternetAccess :: Lens' DescribeNotebookInstanceResponse (Maybe DirectInternetAccess)
dnirrsDirectInternetAccess = lens _dnirrsDirectInternetAccess (\s a -> s {_dnirrsDirectInternetAccess = a})

-- | Whether root access is enabled or disabled for users of the notebook instance.
dnirrsRootAccess :: Lens' DescribeNotebookInstanceResponse (Maybe RootAccess)
dnirrsRootAccess = lens _dnirrsRootAccess (\s a -> s {_dnirrsRootAccess = a})

-- | -- | The response status code.
dnirrsResponseStatus :: Lens' DescribeNotebookInstanceResponse Int
dnirrsResponseStatus = lens _dnirrsResponseStatus (\s a -> s {_dnirrsResponseStatus = a})

-- | The status of the notebook instance.
dnirrsNotebookInstanceStatus :: Lens' DescribeNotebookInstanceResponse NotebookInstanceStatus
dnirrsNotebookInstanceStatus = lens _dnirrsNotebookInstanceStatus (\s a -> s {_dnirrsNotebookInstanceStatus = a})

instance NFData DescribeNotebookInstanceResponse
