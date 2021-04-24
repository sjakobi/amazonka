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
-- Module      : Network.AWS.SageMaker.CreateProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a machine learning (ML) project that can contain one or more templates that set up an ML pipeline from training to deploying an approved model.
module Network.AWS.SageMaker.CreateProject
  ( -- * Creating a Request
    createProject,
    CreateProject,

    -- * Request Lenses
    cpTags,
    cpProjectDescription,
    cpProjectName,
    cpServiceCatalogProvisioningDetails,

    -- * Destructuring the Response
    createProjectResponse,
    CreateProjectResponse,

    -- * Response Lenses
    cprrsResponseStatus,
    cprrsProjectARN,
    cprrsProjectId,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createProject' smart constructor.
data CreateProject = CreateProject'
  { _cpTags ::
      !(Maybe [Tag]),
    _cpProjectDescription :: !(Maybe Text),
    _cpProjectName :: !Text,
    _cpServiceCatalogProvisioningDetails ::
      !ServiceCatalogProvisioningDetails
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpTags' - An array of key-value pairs that you want to use to organize and track your AWS resource costs. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
--
-- * 'cpProjectDescription' - A description for the project.
--
-- * 'cpProjectName' - The name of the project.
--
-- * 'cpServiceCatalogProvisioningDetails' - The product ID and provisioning artifact ID to provision a service catalog. For information, see <https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html What is AWS Service Catalog> .
createProject ::
  -- | 'cpProjectName'
  Text ->
  -- | 'cpServiceCatalogProvisioningDetails'
  ServiceCatalogProvisioningDetails ->
  CreateProject
createProject
  pProjectName_
  pServiceCatalogProvisioningDetails_ =
    CreateProject'
      { _cpTags = Nothing,
        _cpProjectDescription = Nothing,
        _cpProjectName = pProjectName_,
        _cpServiceCatalogProvisioningDetails =
          pServiceCatalogProvisioningDetails_
      }

-- | An array of key-value pairs that you want to use to organize and track your AWS resource costs. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
cpTags :: Lens' CreateProject [Tag]
cpTags = lens _cpTags (\s a -> s {_cpTags = a}) . _Default . _Coerce

-- | A description for the project.
cpProjectDescription :: Lens' CreateProject (Maybe Text)
cpProjectDescription = lens _cpProjectDescription (\s a -> s {_cpProjectDescription = a})

-- | The name of the project.
cpProjectName :: Lens' CreateProject Text
cpProjectName = lens _cpProjectName (\s a -> s {_cpProjectName = a})

-- | The product ID and provisioning artifact ID to provision a service catalog. For information, see <https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html What is AWS Service Catalog> .
cpServiceCatalogProvisioningDetails :: Lens' CreateProject ServiceCatalogProvisioningDetails
cpServiceCatalogProvisioningDetails = lens _cpServiceCatalogProvisioningDetails (\s a -> s {_cpServiceCatalogProvisioningDetails = a})

instance AWSRequest CreateProject where
  type Rs CreateProject = CreateProjectResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateProjectResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "ProjectArn")
            <*> (x .:> "ProjectId")
      )

instance Hashable CreateProject

instance NFData CreateProject

instance ToHeaders CreateProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateProject where
  toJSON CreateProject' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _cpTags,
            ("ProjectDescription" .=) <$> _cpProjectDescription,
            Just ("ProjectName" .= _cpProjectName),
            Just
              ( "ServiceCatalogProvisioningDetails"
                  .= _cpServiceCatalogProvisioningDetails
              )
          ]
      )

instance ToPath CreateProject where
  toPath = const "/"

instance ToQuery CreateProject where
  toQuery = const mempty

-- | /See:/ 'createProjectResponse' smart constructor.
data CreateProjectResponse = CreateProjectResponse'
  { _cprrsResponseStatus ::
      !Int,
    _cprrsProjectARN :: !Text,
    _cprrsProjectId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprrsResponseStatus' - -- | The response status code.
--
-- * 'cprrsProjectARN' - The Amazon Resource Name (ARN) of the project.
--
-- * 'cprrsProjectId' - The ID of the new project.
createProjectResponse ::
  -- | 'cprrsResponseStatus'
  Int ->
  -- | 'cprrsProjectARN'
  Text ->
  -- | 'cprrsProjectId'
  Text ->
  CreateProjectResponse
createProjectResponse
  pResponseStatus_
  pProjectARN_
  pProjectId_ =
    CreateProjectResponse'
      { _cprrsResponseStatus =
          pResponseStatus_,
        _cprrsProjectARN = pProjectARN_,
        _cprrsProjectId = pProjectId_
      }

-- | -- | The response status code.
cprrsResponseStatus :: Lens' CreateProjectResponse Int
cprrsResponseStatus = lens _cprrsResponseStatus (\s a -> s {_cprrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the project.
cprrsProjectARN :: Lens' CreateProjectResponse Text
cprrsProjectARN = lens _cprrsProjectARN (\s a -> s {_cprrsProjectARN = a})

-- | The ID of the new project.
cprrsProjectId :: Lens' CreateProjectResponse Text
cprrsProjectId = lens _cprrsProjectId (\s a -> s {_cprrsProjectId = a})

instance NFData CreateProjectResponse
