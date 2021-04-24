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
-- Module      : Network.AWS.SSM.CreateDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Systems Manager (SSM) document. An SSM document defines the actions that Systems Manager performs on your managed instances. For more information about SSM documents, including information about supported schemas, features, and syntax, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-ssm-docs.html AWS Systems Manager Documents> in the /AWS Systems Manager User Guide/ .
module Network.AWS.SSM.CreateDocument
  ( -- * Creating a Request
    createDocument,
    CreateDocument,

    -- * Request Lenses
    cdDocumentType,
    cdTargetType,
    cdRequires,
    cdVersionName,
    cdDocumentFormat,
    cdTags,
    cdAttachments,
    cdContent,
    cdName,

    -- * Destructuring the Response
    createDocumentResponse,
    CreateDocumentResponse,

    -- * Response Lenses
    cdrrsDocumentDescription,
    cdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'createDocument' smart constructor.
data CreateDocument = CreateDocument'
  { _cdDocumentType ::
      !(Maybe DocumentType),
    _cdTargetType :: !(Maybe Text),
    _cdRequires ::
      !(Maybe (List1 DocumentRequires)),
    _cdVersionName :: !(Maybe Text),
    _cdDocumentFormat ::
      !(Maybe DocumentFormat),
    _cdTags :: !(Maybe [Tag]),
    _cdAttachments ::
      !(Maybe [AttachmentsSource]),
    _cdContent :: !Text,
    _cdName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdDocumentType' - The type of document to create.
--
-- * 'cdTargetType' - Specify a target type to define the kinds of resources the document can run on. For example, to run a document on EC2 instances, specify the following value: /AWS::EC2::Instance. If you specify a value of '/' the document can run on all types of resources. If you don't specify a value, the document can't run on any resources. For a list of valid resource types, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS resource and property types reference> in the /AWS CloudFormation User Guide/ .
--
-- * 'cdRequires' - A list of SSM documents required by a document. This parameter is used exclusively by AWS AppConfig. When a user creates an AppConfig configuration in an SSM document, the user must also specify a required document for validation purposes. In this case, an @ApplicationConfiguration@ document requires an @ApplicationConfigurationSchema@ document for validation purposes. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig.html AWS AppConfig> in the /AWS Systems Manager User Guide/ .
--
-- * 'cdVersionName' - An optional field specifying the version of the artifact you are creating with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
--
-- * 'cdDocumentFormat' - Specify the document format for the request. The document format can be JSON, YAML, or TEXT. JSON is the default format.
--
-- * 'cdTags' - Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an SSM document to identify the types of targets or the environment where it will run. In this case, you could specify the following key name/value pairs:     * @Key=OS,Value=Windows@      * @Key=Environment,Value=Production@
--
-- * 'cdAttachments' - A list of key and value pairs that describe attachments to a version of a document.
--
-- * 'cdContent' - The content for the new SSM document in JSON or YAML format. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command. For examples, see the following topics in the /AWS Systems Manager User Guide/ .     * <https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html Create an SSM document (AWS API)>      * <https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-cli.html Create an SSM document (AWS CLI)>      * <https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html Create an SSM document (API)>
--
-- * 'cdName' - A name for the Systems Manager document. /Important:/ You can't use the following strings as document name prefixes. These are reserved by AWS for use as document name prefixes:     * @aws-@      * @amazon@      * @amzn@
createDocument ::
  -- | 'cdContent'
  Text ->
  -- | 'cdName'
  Text ->
  CreateDocument
createDocument pContent_ pName_ =
  CreateDocument'
    { _cdDocumentType = Nothing,
      _cdTargetType = Nothing,
      _cdRequires = Nothing,
      _cdVersionName = Nothing,
      _cdDocumentFormat = Nothing,
      _cdTags = Nothing,
      _cdAttachments = Nothing,
      _cdContent = pContent_,
      _cdName = pName_
    }

-- | The type of document to create.
cdDocumentType :: Lens' CreateDocument (Maybe DocumentType)
cdDocumentType = lens _cdDocumentType (\s a -> s {_cdDocumentType = a})

-- | Specify a target type to define the kinds of resources the document can run on. For example, to run a document on EC2 instances, specify the following value: /AWS::EC2::Instance. If you specify a value of '/' the document can run on all types of resources. If you don't specify a value, the document can't run on any resources. For a list of valid resource types, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS resource and property types reference> in the /AWS CloudFormation User Guide/ .
cdTargetType :: Lens' CreateDocument (Maybe Text)
cdTargetType = lens _cdTargetType (\s a -> s {_cdTargetType = a})

-- | A list of SSM documents required by a document. This parameter is used exclusively by AWS AppConfig. When a user creates an AppConfig configuration in an SSM document, the user must also specify a required document for validation purposes. In this case, an @ApplicationConfiguration@ document requires an @ApplicationConfigurationSchema@ document for validation purposes. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig.html AWS AppConfig> in the /AWS Systems Manager User Guide/ .
cdRequires :: Lens' CreateDocument (Maybe (NonEmpty DocumentRequires))
cdRequires = lens _cdRequires (\s a -> s {_cdRequires = a}) . mapping _List1

-- | An optional field specifying the version of the artifact you are creating with the document. For example, "Release 12, Update 6". This value is unique across all versions of a document, and cannot be changed.
cdVersionName :: Lens' CreateDocument (Maybe Text)
cdVersionName = lens _cdVersionName (\s a -> s {_cdVersionName = a})

-- | Specify the document format for the request. The document format can be JSON, YAML, or TEXT. JSON is the default format.
cdDocumentFormat :: Lens' CreateDocument (Maybe DocumentFormat)
cdDocumentFormat = lens _cdDocumentFormat (\s a -> s {_cdDocumentFormat = a})

-- | Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an SSM document to identify the types of targets or the environment where it will run. In this case, you could specify the following key name/value pairs:     * @Key=OS,Value=Windows@      * @Key=Environment,Value=Production@
cdTags :: Lens' CreateDocument [Tag]
cdTags = lens _cdTags (\s a -> s {_cdTags = a}) . _Default . _Coerce

-- | A list of key and value pairs that describe attachments to a version of a document.
cdAttachments :: Lens' CreateDocument [AttachmentsSource]
cdAttachments = lens _cdAttachments (\s a -> s {_cdAttachments = a}) . _Default . _Coerce

-- | The content for the new SSM document in JSON or YAML format. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command. For examples, see the following topics in the /AWS Systems Manager User Guide/ .     * <https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html Create an SSM document (AWS API)>      * <https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-cli.html Create an SSM document (AWS CLI)>      * <https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html Create an SSM document (API)>
cdContent :: Lens' CreateDocument Text
cdContent = lens _cdContent (\s a -> s {_cdContent = a})

-- | A name for the Systems Manager document. /Important:/ You can't use the following strings as document name prefixes. These are reserved by AWS for use as document name prefixes:     * @aws-@      * @amazon@      * @amzn@
cdName :: Lens' CreateDocument Text
cdName = lens _cdName (\s a -> s {_cdName = a})

instance AWSRequest CreateDocument where
  type Rs CreateDocument = CreateDocumentResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          CreateDocumentResponse'
            <$> (x .?> "DocumentDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDocument

instance NFData CreateDocument

instance ToHeaders CreateDocument where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.CreateDocument" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDocument where
  toJSON CreateDocument' {..} =
    object
      ( catMaybes
          [ ("DocumentType" .=) <$> _cdDocumentType,
            ("TargetType" .=) <$> _cdTargetType,
            ("Requires" .=) <$> _cdRequires,
            ("VersionName" .=) <$> _cdVersionName,
            ("DocumentFormat" .=) <$> _cdDocumentFormat,
            ("Tags" .=) <$> _cdTags,
            ("Attachments" .=) <$> _cdAttachments,
            Just ("Content" .= _cdContent),
            Just ("Name" .= _cdName)
          ]
      )

instance ToPath CreateDocument where
  toPath = const "/"

instance ToQuery CreateDocument where
  toQuery = const mempty

-- | /See:/ 'createDocumentResponse' smart constructor.
data CreateDocumentResponse = CreateDocumentResponse'
  { _cdrrsDocumentDescription ::
      !( Maybe
           DocumentDescription
       ),
    _cdrrsResponseStatus ::
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

-- | Creates a value of 'CreateDocumentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrsDocumentDescription' - Information about the Systems Manager document.
--
-- * 'cdrrsResponseStatus' - -- | The response status code.
createDocumentResponse ::
  -- | 'cdrrsResponseStatus'
  Int ->
  CreateDocumentResponse
createDocumentResponse pResponseStatus_ =
  CreateDocumentResponse'
    { _cdrrsDocumentDescription =
        Nothing,
      _cdrrsResponseStatus = pResponseStatus_
    }

-- | Information about the Systems Manager document.
cdrrsDocumentDescription :: Lens' CreateDocumentResponse (Maybe DocumentDescription)
cdrrsDocumentDescription = lens _cdrrsDocumentDescription (\s a -> s {_cdrrsDocumentDescription = a})

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDocumentResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

instance NFData CreateDocumentResponse
