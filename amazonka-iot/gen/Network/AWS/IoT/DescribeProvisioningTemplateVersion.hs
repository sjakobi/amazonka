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
-- Module      : Network.AWS.IoT.DescribeProvisioningTemplateVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a fleet provisioning template version.
module Network.AWS.IoT.DescribeProvisioningTemplateVersion
  ( -- * Creating a Request
    describeProvisioningTemplateVersion,
    DescribeProvisioningTemplateVersion,

    -- * Request Lenses
    dptvTemplateName,
    dptvVersionId,

    -- * Destructuring the Response
    describeProvisioningTemplateVersionResponse,
    DescribeProvisioningTemplateVersionResponse,

    -- * Response Lenses
    dptvrprsCreationDate,
    dptvrprsVersionId,
    dptvrprsIsDefaultVersion,
    dptvrprsTemplateBody,
    dptvrprsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeProvisioningTemplateVersion' smart constructor.
data DescribeProvisioningTemplateVersion = DescribeProvisioningTemplateVersion'
  { _dptvTemplateName ::
      !Text,
    _dptvVersionId ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeProvisioningTemplateVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dptvTemplateName' - The template name.
--
-- * 'dptvVersionId' - The fleet provisioning template version ID.
describeProvisioningTemplateVersion ::
  -- | 'dptvTemplateName'
  Text ->
  -- | 'dptvVersionId'
  Int ->
  DescribeProvisioningTemplateVersion
describeProvisioningTemplateVersion
  pTemplateName_
  pVersionId_ =
    DescribeProvisioningTemplateVersion'
      { _dptvTemplateName =
          pTemplateName_,
        _dptvVersionId = pVersionId_
      }

-- | The template name.
dptvTemplateName :: Lens' DescribeProvisioningTemplateVersion Text
dptvTemplateName = lens _dptvTemplateName (\s a -> s {_dptvTemplateName = a})

-- | The fleet provisioning template version ID.
dptvVersionId :: Lens' DescribeProvisioningTemplateVersion Int
dptvVersionId = lens _dptvVersionId (\s a -> s {_dptvVersionId = a})

instance
  AWSRequest
    DescribeProvisioningTemplateVersion
  where
  type
    Rs DescribeProvisioningTemplateVersion =
      DescribeProvisioningTemplateVersionResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeProvisioningTemplateVersionResponse'
            <$> (x .?> "creationDate")
            <*> (x .?> "versionId")
            <*> (x .?> "isDefaultVersion")
            <*> (x .?> "templateBody")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeProvisioningTemplateVersion

instance NFData DescribeProvisioningTemplateVersion

instance
  ToHeaders
    DescribeProvisioningTemplateVersion
  where
  toHeaders = const mempty

instance ToPath DescribeProvisioningTemplateVersion where
  toPath DescribeProvisioningTemplateVersion' {..} =
    mconcat
      [ "/provisioning-templates/",
        toBS _dptvTemplateName,
        "/versions/",
        toBS _dptvVersionId
      ]

instance ToQuery DescribeProvisioningTemplateVersion where
  toQuery = const mempty

-- | /See:/ 'describeProvisioningTemplateVersionResponse' smart constructor.
data DescribeProvisioningTemplateVersionResponse = DescribeProvisioningTemplateVersionResponse'
  { _dptvrprsCreationDate ::
      !( Maybe
           POSIX
       ),
    _dptvrprsVersionId ::
      !( Maybe
           Int
       ),
    _dptvrprsIsDefaultVersion ::
      !( Maybe
           Bool
       ),
    _dptvrprsTemplateBody ::
      !( Maybe
           Text
       ),
    _dptvrprsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeProvisioningTemplateVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dptvrprsCreationDate' - The date when the fleet provisioning template version was created.
--
-- * 'dptvrprsVersionId' - The fleet provisioning template version ID.
--
-- * 'dptvrprsIsDefaultVersion' - True if the fleet provisioning template version is the default version.
--
-- * 'dptvrprsTemplateBody' - The JSON formatted contents of the fleet provisioning template version.
--
-- * 'dptvrprsResponseStatus' - -- | The response status code.
describeProvisioningTemplateVersionResponse ::
  -- | 'dptvrprsResponseStatus'
  Int ->
  DescribeProvisioningTemplateVersionResponse
describeProvisioningTemplateVersionResponse
  pResponseStatus_ =
    DescribeProvisioningTemplateVersionResponse'
      { _dptvrprsCreationDate =
          Nothing,
        _dptvrprsVersionId = Nothing,
        _dptvrprsIsDefaultVersion =
          Nothing,
        _dptvrprsTemplateBody =
          Nothing,
        _dptvrprsResponseStatus =
          pResponseStatus_
      }

-- | The date when the fleet provisioning template version was created.
dptvrprsCreationDate :: Lens' DescribeProvisioningTemplateVersionResponse (Maybe UTCTime)
dptvrprsCreationDate = lens _dptvrprsCreationDate (\s a -> s {_dptvrprsCreationDate = a}) . mapping _Time

-- | The fleet provisioning template version ID.
dptvrprsVersionId :: Lens' DescribeProvisioningTemplateVersionResponse (Maybe Int)
dptvrprsVersionId = lens _dptvrprsVersionId (\s a -> s {_dptvrprsVersionId = a})

-- | True if the fleet provisioning template version is the default version.
dptvrprsIsDefaultVersion :: Lens' DescribeProvisioningTemplateVersionResponse (Maybe Bool)
dptvrprsIsDefaultVersion = lens _dptvrprsIsDefaultVersion (\s a -> s {_dptvrprsIsDefaultVersion = a})

-- | The JSON formatted contents of the fleet provisioning template version.
dptvrprsTemplateBody :: Lens' DescribeProvisioningTemplateVersionResponse (Maybe Text)
dptvrprsTemplateBody = lens _dptvrprsTemplateBody (\s a -> s {_dptvrprsTemplateBody = a})

-- | -- | The response status code.
dptvrprsResponseStatus :: Lens' DescribeProvisioningTemplateVersionResponse Int
dptvrprsResponseStatus = lens _dptvrprsResponseStatus (\s a -> s {_dptvrprsResponseStatus = a})

instance
  NFData
    DescribeProvisioningTemplateVersionResponse
