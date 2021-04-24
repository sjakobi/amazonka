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
-- Module      : Network.AWS.SageMaker.UpdateNotebookInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a notebook instance. NotebookInstance updates include upgrading or downgrading the ML compute instance used for your notebook instance to accommodate changes in your workload requirements.
module Network.AWS.SageMaker.UpdateNotebookInstance
  ( -- * Creating a Request
    updateNotebookInstance,
    UpdateNotebookInstance,

    -- * Request Lenses
    uniAcceleratorTypes,
    uniDefaultCodeRepository,
    uniRoleARN,
    uniInstanceType,
    uniDisassociateDefaultCodeRepository,
    uniDisassociateAcceleratorTypes,
    uniDisassociateLifecycleConfig,
    uniAdditionalCodeRepositories,
    uniDisassociateAdditionalCodeRepositories,
    uniVolumeSizeInGB,
    uniLifecycleConfigName,
    uniRootAccess,
    uniNotebookInstanceName,

    -- * Destructuring the Response
    updateNotebookInstanceResponse,
    UpdateNotebookInstanceResponse,

    -- * Response Lenses
    unirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateNotebookInstance' smart constructor.
data UpdateNotebookInstance = UpdateNotebookInstance'
  { _uniAcceleratorTypes ::
      !( Maybe
           [NotebookInstanceAcceleratorType]
       ),
    _uniDefaultCodeRepository ::
      !(Maybe Text),
    _uniRoleARN ::
      !(Maybe Text),
    _uniInstanceType ::
      !(Maybe InstanceType),
    _uniDisassociateDefaultCodeRepository ::
      !(Maybe Bool),
    _uniDisassociateAcceleratorTypes ::
      !(Maybe Bool),
    _uniDisassociateLifecycleConfig ::
      !(Maybe Bool),
    _uniAdditionalCodeRepositories ::
      !(Maybe [Text]),
    _uniDisassociateAdditionalCodeRepositories ::
      !(Maybe Bool),
    _uniVolumeSizeInGB ::
      !(Maybe Nat),
    _uniLifecycleConfigName ::
      !(Maybe Text),
    _uniRootAccess ::
      !(Maybe RootAccess),
    _uniNotebookInstanceName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateNotebookInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uniAcceleratorTypes' - A list of the Elastic Inference (EI) instance types to associate with this notebook instance. Currently only one EI instance type can be associated with a notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker> .
--
-- * 'uniDefaultCodeRepository' - The Git repository to associate with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
--
-- * 'uniRoleARN' - The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access the notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html Amazon SageMaker Roles> .
--
-- * 'uniInstanceType' - The Amazon ML compute instance type.
--
-- * 'uniDisassociateDefaultCodeRepository' - The name or URL of the default Git repository to remove from this notebook instance. This operation is idempotent. If you specify a Git repository that is not associated with the notebook instance when you call this method, it does not throw an error.
--
-- * 'uniDisassociateAcceleratorTypes' - A list of the Elastic Inference (EI) instance types to remove from this notebook instance. This operation is idempotent. If you specify an accelerator type that is not associated with the notebook instance when you call this method, it does not throw an error.
--
-- * 'uniDisassociateLifecycleConfig' - Set to @true@ to remove the notebook instance lifecycle configuration currently associated with the notebook instance. This operation is idempotent. If you specify a lifecycle configuration that is not associated with the notebook instance when you call this method, it does not throw an error.
--
-- * 'uniAdditionalCodeRepositories' - An array of up to three Git repositories to associate with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
--
-- * 'uniDisassociateAdditionalCodeRepositories' - A list of names or URLs of the default Git repositories to remove from this notebook instance. This operation is idempotent. If you specify a Git repository that is not associated with the notebook instance when you call this method, it does not throw an error.
--
-- * 'uniVolumeSizeInGB' - The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB. ML storage volumes are encrypted, so Amazon SageMaker can't determine the amount of available free space on the volume. Because of this, you can increase the volume size when you update a notebook instance, but you can't decrease the volume size. If you want to decrease the size of the ML storage volume in use, create a new notebook instance with the desired size.
--
-- * 'uniLifecycleConfigName' - The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance> .
--
-- * 'uniRootAccess' - Whether root access is enabled or disabled for users of the notebook instance. The default value is @Enabled@ .
--
-- * 'uniNotebookInstanceName' - The name of the notebook instance to update.
updateNotebookInstance ::
  -- | 'uniNotebookInstanceName'
  Text ->
  UpdateNotebookInstance
updateNotebookInstance pNotebookInstanceName_ =
  UpdateNotebookInstance'
    { _uniAcceleratorTypes =
        Nothing,
      _uniDefaultCodeRepository = Nothing,
      _uniRoleARN = Nothing,
      _uniInstanceType = Nothing,
      _uniDisassociateDefaultCodeRepository = Nothing,
      _uniDisassociateAcceleratorTypes = Nothing,
      _uniDisassociateLifecycleConfig = Nothing,
      _uniAdditionalCodeRepositories = Nothing,
      _uniDisassociateAdditionalCodeRepositories =
        Nothing,
      _uniVolumeSizeInGB = Nothing,
      _uniLifecycleConfigName = Nothing,
      _uniRootAccess = Nothing,
      _uniNotebookInstanceName = pNotebookInstanceName_
    }

-- | A list of the Elastic Inference (EI) instance types to associate with this notebook instance. Currently only one EI instance type can be associated with a notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker> .
uniAcceleratorTypes :: Lens' UpdateNotebookInstance [NotebookInstanceAcceleratorType]
uniAcceleratorTypes = lens _uniAcceleratorTypes (\s a -> s {_uniAcceleratorTypes = a}) . _Default . _Coerce

-- | The Git repository to associate with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
uniDefaultCodeRepository :: Lens' UpdateNotebookInstance (Maybe Text)
uniDefaultCodeRepository = lens _uniDefaultCodeRepository (\s a -> s {_uniDefaultCodeRepository = a})

-- | The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access the notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html Amazon SageMaker Roles> .
uniRoleARN :: Lens' UpdateNotebookInstance (Maybe Text)
uniRoleARN = lens _uniRoleARN (\s a -> s {_uniRoleARN = a})

-- | The Amazon ML compute instance type.
uniInstanceType :: Lens' UpdateNotebookInstance (Maybe InstanceType)
uniInstanceType = lens _uniInstanceType (\s a -> s {_uniInstanceType = a})

-- | The name or URL of the default Git repository to remove from this notebook instance. This operation is idempotent. If you specify a Git repository that is not associated with the notebook instance when you call this method, it does not throw an error.
uniDisassociateDefaultCodeRepository :: Lens' UpdateNotebookInstance (Maybe Bool)
uniDisassociateDefaultCodeRepository = lens _uniDisassociateDefaultCodeRepository (\s a -> s {_uniDisassociateDefaultCodeRepository = a})

-- | A list of the Elastic Inference (EI) instance types to remove from this notebook instance. This operation is idempotent. If you specify an accelerator type that is not associated with the notebook instance when you call this method, it does not throw an error.
uniDisassociateAcceleratorTypes :: Lens' UpdateNotebookInstance (Maybe Bool)
uniDisassociateAcceleratorTypes = lens _uniDisassociateAcceleratorTypes (\s a -> s {_uniDisassociateAcceleratorTypes = a})

-- | Set to @true@ to remove the notebook instance lifecycle configuration currently associated with the notebook instance. This operation is idempotent. If you specify a lifecycle configuration that is not associated with the notebook instance when you call this method, it does not throw an error.
uniDisassociateLifecycleConfig :: Lens' UpdateNotebookInstance (Maybe Bool)
uniDisassociateLifecycleConfig = lens _uniDisassociateLifecycleConfig (\s a -> s {_uniDisassociateLifecycleConfig = a})

-- | An array of up to three Git repositories to associate with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
uniAdditionalCodeRepositories :: Lens' UpdateNotebookInstance [Text]
uniAdditionalCodeRepositories = lens _uniAdditionalCodeRepositories (\s a -> s {_uniAdditionalCodeRepositories = a}) . _Default . _Coerce

-- | A list of names or URLs of the default Git repositories to remove from this notebook instance. This operation is idempotent. If you specify a Git repository that is not associated with the notebook instance when you call this method, it does not throw an error.
uniDisassociateAdditionalCodeRepositories :: Lens' UpdateNotebookInstance (Maybe Bool)
uniDisassociateAdditionalCodeRepositories = lens _uniDisassociateAdditionalCodeRepositories (\s a -> s {_uniDisassociateAdditionalCodeRepositories = a})

-- | The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB. ML storage volumes are encrypted, so Amazon SageMaker can't determine the amount of available free space on the volume. Because of this, you can increase the volume size when you update a notebook instance, but you can't decrease the volume size. If you want to decrease the size of the ML storage volume in use, create a new notebook instance with the desired size.
uniVolumeSizeInGB :: Lens' UpdateNotebookInstance (Maybe Natural)
uniVolumeSizeInGB = lens _uniVolumeSizeInGB (\s a -> s {_uniVolumeSizeInGB = a}) . mapping _Nat

-- | The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance> .
uniLifecycleConfigName :: Lens' UpdateNotebookInstance (Maybe Text)
uniLifecycleConfigName = lens _uniLifecycleConfigName (\s a -> s {_uniLifecycleConfigName = a})

-- | Whether root access is enabled or disabled for users of the notebook instance. The default value is @Enabled@ .
uniRootAccess :: Lens' UpdateNotebookInstance (Maybe RootAccess)
uniRootAccess = lens _uniRootAccess (\s a -> s {_uniRootAccess = a})

-- | The name of the notebook instance to update.
uniNotebookInstanceName :: Lens' UpdateNotebookInstance Text
uniNotebookInstanceName = lens _uniNotebookInstanceName (\s a -> s {_uniNotebookInstanceName = a})

instance AWSRequest UpdateNotebookInstance where
  type
    Rs UpdateNotebookInstance =
      UpdateNotebookInstanceResponse
  request = postJSON sageMaker
  response =
    receiveEmpty
      ( \s h x ->
          UpdateNotebookInstanceResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable UpdateNotebookInstance

instance NFData UpdateNotebookInstance

instance ToHeaders UpdateNotebookInstance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateNotebookInstance" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateNotebookInstance where
  toJSON UpdateNotebookInstance' {..} =
    object
      ( catMaybes
          [ ("AcceleratorTypes" .=) <$> _uniAcceleratorTypes,
            ("DefaultCodeRepository" .=)
              <$> _uniDefaultCodeRepository,
            ("RoleArn" .=) <$> _uniRoleARN,
            ("InstanceType" .=) <$> _uniInstanceType,
            ("DisassociateDefaultCodeRepository" .=)
              <$> _uniDisassociateDefaultCodeRepository,
            ("DisassociateAcceleratorTypes" .=)
              <$> _uniDisassociateAcceleratorTypes,
            ("DisassociateLifecycleConfig" .=)
              <$> _uniDisassociateLifecycleConfig,
            ("AdditionalCodeRepositories" .=)
              <$> _uniAdditionalCodeRepositories,
            ("DisassociateAdditionalCodeRepositories" .=)
              <$> _uniDisassociateAdditionalCodeRepositories,
            ("VolumeSizeInGB" .=) <$> _uniVolumeSizeInGB,
            ("LifecycleConfigName" .=)
              <$> _uniLifecycleConfigName,
            ("RootAccess" .=) <$> _uniRootAccess,
            Just
              ( "NotebookInstanceName"
                  .= _uniNotebookInstanceName
              )
          ]
      )

instance ToPath UpdateNotebookInstance where
  toPath = const "/"

instance ToQuery UpdateNotebookInstance where
  toQuery = const mempty

-- | /See:/ 'updateNotebookInstanceResponse' smart constructor.
newtype UpdateNotebookInstanceResponse = UpdateNotebookInstanceResponse'
  { _unirrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateNotebookInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unirrsResponseStatus' - -- | The response status code.
updateNotebookInstanceResponse ::
  -- | 'unirrsResponseStatus'
  Int ->
  UpdateNotebookInstanceResponse
updateNotebookInstanceResponse pResponseStatus_ =
  UpdateNotebookInstanceResponse'
    { _unirrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
unirrsResponseStatus :: Lens' UpdateNotebookInstanceResponse Int
unirrsResponseStatus = lens _unirrsResponseStatus (\s a -> s {_unirrsResponseStatus = a})

instance NFData UpdateNotebookInstanceResponse
