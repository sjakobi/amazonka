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
-- Module      : Network.AWS.SageMaker.DescribeProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the details of a project.
module Network.AWS.SageMaker.DescribeProject
  ( -- * Creating a Request
    describeProject,
    DescribeProject,

    -- * Request Lenses
    dProjectName,

    -- * Destructuring the Response
    describeProjectResponse,
    DescribeProjectResponse,

    -- * Response Lenses
    describeprojectresponseersServiceCatalogProvisionedProductDetails,
    describeprojectresponseersProjectDescription,
    describeprojectresponseersCreatedBy,
    describeprojectresponseersResponseStatus,
    describeprojectresponseersProjectARN,
    describeprojectresponseersProjectName,
    describeprojectresponseersProjectId,
    describeprojectresponseersServiceCatalogProvisioningDetails,
    describeprojectresponseersProjectStatus,
    describeprojectresponseersCreationTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeProject' smart constructor.
newtype DescribeProject = DescribeProject'
  { _dProjectName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dProjectName' - The name of the project to describe.
describeProject ::
  -- | 'dProjectName'
  Text ->
  DescribeProject
describeProject pProjectName_ =
  DescribeProject' {_dProjectName = pProjectName_}

-- | The name of the project to describe.
dProjectName :: Lens' DescribeProject Text
dProjectName = lens _dProjectName (\s a -> s {_dProjectName = a})

instance AWSRequest DescribeProject where
  type Rs DescribeProject = DescribeProjectResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeProjectResponse'
            <$> (x .?> "ServiceCatalogProvisionedProductDetails")
            <*> (x .?> "ProjectDescription")
            <*> (x .?> "CreatedBy")
            <*> (pure (fromEnum s))
            <*> (x .:> "ProjectArn")
            <*> (x .:> "ProjectName")
            <*> (x .:> "ProjectId")
            <*> (x .:> "ServiceCatalogProvisioningDetails")
            <*> (x .:> "ProjectStatus")
            <*> (x .:> "CreationTime")
      )

instance Hashable DescribeProject

instance NFData DescribeProject

instance ToHeaders DescribeProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProject where
  toJSON DescribeProject' {..} =
    object
      (catMaybes [Just ("ProjectName" .= _dProjectName)])

instance ToPath DescribeProject where
  toPath = const "/"

instance ToQuery DescribeProject where
  toQuery = const mempty

-- | /See:/ 'describeProjectResponse' smart constructor.
data DescribeProjectResponse = DescribeProjectResponse'
  { _describeprojectresponseersServiceCatalogProvisionedProductDetails ::
      !( Maybe
           ServiceCatalogProvisionedProductDetails
       ),
    _describeprojectresponseersProjectDescription ::
      !(Maybe Text),
    _describeprojectresponseersCreatedBy ::
      !(Maybe UserContext),
    _describeprojectresponseersResponseStatus ::
      !Int,
    _describeprojectresponseersProjectARN ::
      !Text,
    _describeprojectresponseersProjectName ::
      !Text,
    _describeprojectresponseersProjectId ::
      !Text,
    _describeprojectresponseersServiceCatalogProvisioningDetails ::
      !ServiceCatalogProvisioningDetails,
    _describeprojectresponseersProjectStatus ::
      !ProjectStatus,
    _describeprojectresponseersCreationTime ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'describeprojectresponseersServiceCatalogProvisionedProductDetails' - Information about a provisioned service catalog product.
--
-- * 'describeprojectresponseersProjectDescription' - The description of the project.
--
-- * 'describeprojectresponseersCreatedBy' - Undocumented member.
--
-- * 'describeprojectresponseersResponseStatus' - -- | The response status code.
--
-- * 'describeprojectresponseersProjectARN' - The Amazon Resource Name (ARN) of the project.
--
-- * 'describeprojectresponseersProjectName' - The name of the project.
--
-- * 'describeprojectresponseersProjectId' - The ID of the project.
--
-- * 'describeprojectresponseersServiceCatalogProvisioningDetails' - Information used to provision a service catalog product. For information, see <https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html What is AWS Service Catalog> .
--
-- * 'describeprojectresponseersProjectStatus' - The status of the project.
--
-- * 'describeprojectresponseersCreationTime' - The time when the project was created.
describeProjectResponse ::
  -- | 'describeprojectresponseersResponseStatus'
  Int ->
  -- | 'describeprojectresponseersProjectARN'
  Text ->
  -- | 'describeprojectresponseersProjectName'
  Text ->
  -- | 'describeprojectresponseersProjectId'
  Text ->
  -- | 'describeprojectresponseersServiceCatalogProvisioningDetails'
  ServiceCatalogProvisioningDetails ->
  -- | 'describeprojectresponseersProjectStatus'
  ProjectStatus ->
  -- | 'describeprojectresponseersCreationTime'
  UTCTime ->
  DescribeProjectResponse
describeProjectResponse
  pResponseStatus_
  pProjectARN_
  pProjectName_
  pProjectId_
  pServiceCatalogProvisioningDetails_
  pProjectStatus_
  pCreationTime_ =
    DescribeProjectResponse'
      { _describeprojectresponseersServiceCatalogProvisionedProductDetails =
          Nothing,
        _describeprojectresponseersProjectDescription =
          Nothing,
        _describeprojectresponseersCreatedBy = Nothing,
        _describeprojectresponseersResponseStatus =
          pResponseStatus_,
        _describeprojectresponseersProjectARN =
          pProjectARN_,
        _describeprojectresponseersProjectName =
          pProjectName_,
        _describeprojectresponseersProjectId = pProjectId_,
        _describeprojectresponseersServiceCatalogProvisioningDetails =
          pServiceCatalogProvisioningDetails_,
        _describeprojectresponseersProjectStatus =
          pProjectStatus_,
        _describeprojectresponseersCreationTime =
          _Time # pCreationTime_
      }

-- | Information about a provisioned service catalog product.
describeprojectresponseersServiceCatalogProvisionedProductDetails :: Lens' DescribeProjectResponse (Maybe ServiceCatalogProvisionedProductDetails)
describeprojectresponseersServiceCatalogProvisionedProductDetails = lens _describeprojectresponseersServiceCatalogProvisionedProductDetails (\s a -> s {_describeprojectresponseersServiceCatalogProvisionedProductDetails = a})

-- | The description of the project.
describeprojectresponseersProjectDescription :: Lens' DescribeProjectResponse (Maybe Text)
describeprojectresponseersProjectDescription = lens _describeprojectresponseersProjectDescription (\s a -> s {_describeprojectresponseersProjectDescription = a})

-- | Undocumented member.
describeprojectresponseersCreatedBy :: Lens' DescribeProjectResponse (Maybe UserContext)
describeprojectresponseersCreatedBy = lens _describeprojectresponseersCreatedBy (\s a -> s {_describeprojectresponseersCreatedBy = a})

-- | -- | The response status code.
describeprojectresponseersResponseStatus :: Lens' DescribeProjectResponse Int
describeprojectresponseersResponseStatus = lens _describeprojectresponseersResponseStatus (\s a -> s {_describeprojectresponseersResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the project.
describeprojectresponseersProjectARN :: Lens' DescribeProjectResponse Text
describeprojectresponseersProjectARN = lens _describeprojectresponseersProjectARN (\s a -> s {_describeprojectresponseersProjectARN = a})

-- | The name of the project.
describeprojectresponseersProjectName :: Lens' DescribeProjectResponse Text
describeprojectresponseersProjectName = lens _describeprojectresponseersProjectName (\s a -> s {_describeprojectresponseersProjectName = a})

-- | The ID of the project.
describeprojectresponseersProjectId :: Lens' DescribeProjectResponse Text
describeprojectresponseersProjectId = lens _describeprojectresponseersProjectId (\s a -> s {_describeprojectresponseersProjectId = a})

-- | Information used to provision a service catalog product. For information, see <https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html What is AWS Service Catalog> .
describeprojectresponseersServiceCatalogProvisioningDetails :: Lens' DescribeProjectResponse ServiceCatalogProvisioningDetails
describeprojectresponseersServiceCatalogProvisioningDetails = lens _describeprojectresponseersServiceCatalogProvisioningDetails (\s a -> s {_describeprojectresponseersServiceCatalogProvisioningDetails = a})

-- | The status of the project.
describeprojectresponseersProjectStatus :: Lens' DescribeProjectResponse ProjectStatus
describeprojectresponseersProjectStatus = lens _describeprojectresponseersProjectStatus (\s a -> s {_describeprojectresponseersProjectStatus = a})

-- | The time when the project was created.
describeprojectresponseersCreationTime :: Lens' DescribeProjectResponse UTCTime
describeprojectresponseersCreationTime = lens _describeprojectresponseersCreationTime (\s a -> s {_describeprojectresponseersCreationTime = a}) . _Time

instance NFData DescribeProjectResponse
