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
-- Module      : Network.AWS.CloudDirectory.CreateDirectory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a 'Directory' by copying the published schema into the directory. A directory cannot be created without a schema.
--
--
-- You can also quickly create a directory using a managed schema, called the @QuickStartSchema@ . For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_managed.html Managed Schema> in the /Amazon Cloud Directory Developer Guide/ .
module Network.AWS.CloudDirectory.CreateDirectory
  ( -- * Creating a Request
    createDirectory,
    CreateDirectory,

    -- * Request Lenses
    cdName,
    cdSchemaARN,

    -- * Destructuring the Response
    createDirectoryResponse,
    CreateDirectoryResponse,

    -- * Response Lenses
    cdrrsResponseStatus,
    cdrrsDirectoryARN,
    cdrrsName,
    cdrrsObjectIdentifier,
    cdrrsAppliedSchemaARN,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDirectory' smart constructor.
data CreateDirectory = CreateDirectory'
  { _cdName ::
      !Text,
    _cdSchemaARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDirectory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdName' - The name of the 'Directory' . Should be unique per account, per region.
--
-- * 'cdSchemaARN' - The Amazon Resource Name (ARN) of the published schema that will be copied into the data 'Directory' . For more information, see 'arns' .
createDirectory ::
  -- | 'cdName'
  Text ->
  -- | 'cdSchemaARN'
  Text ->
  CreateDirectory
createDirectory pName_ pSchemaARN_ =
  CreateDirectory'
    { _cdName = pName_,
      _cdSchemaARN = pSchemaARN_
    }

-- | The name of the 'Directory' . Should be unique per account, per region.
cdName :: Lens' CreateDirectory Text
cdName = lens _cdName (\s a -> s {_cdName = a})

-- | The Amazon Resource Name (ARN) of the published schema that will be copied into the data 'Directory' . For more information, see 'arns' .
cdSchemaARN :: Lens' CreateDirectory Text
cdSchemaARN = lens _cdSchemaARN (\s a -> s {_cdSchemaARN = a})

instance AWSRequest CreateDirectory where
  type Rs CreateDirectory = CreateDirectoryResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          CreateDirectoryResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "DirectoryArn")
            <*> (x .:> "Name")
            <*> (x .:> "ObjectIdentifier")
            <*> (x .:> "AppliedSchemaArn")
      )

instance Hashable CreateDirectory

instance NFData CreateDirectory

instance ToHeaders CreateDirectory where
  toHeaders CreateDirectory' {..} =
    mconcat ["x-amz-data-partition" =# _cdSchemaARN]

instance ToJSON CreateDirectory where
  toJSON CreateDirectory' {..} =
    object (catMaybes [Just ("Name" .= _cdName)])

instance ToPath CreateDirectory where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/directory/create"

instance ToQuery CreateDirectory where
  toQuery = const mempty

-- | /See:/ 'createDirectoryResponse' smart constructor.
data CreateDirectoryResponse = CreateDirectoryResponse'
  { _cdrrsResponseStatus ::
      !Int,
    _cdrrsDirectoryARN ::
      !Text,
    _cdrrsName :: !Text,
    _cdrrsObjectIdentifier ::
      !Text,
    _cdrrsAppliedSchemaARN ::
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

-- | Creates a value of 'CreateDirectoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrsResponseStatus' - -- | The response status code.
--
-- * 'cdrrsDirectoryARN' - The ARN that is associated with the 'Directory' . For more information, see 'arns' .
--
-- * 'cdrrsName' - The name of the 'Directory' .
--
-- * 'cdrrsObjectIdentifier' - The root object node of the created directory.
--
-- * 'cdrrsAppliedSchemaARN' - The ARN of the published schema in the 'Directory' . Once a published schema is copied into the directory, it has its own ARN, which is referred to applied schema ARN. For more information, see 'arns' .
createDirectoryResponse ::
  -- | 'cdrrsResponseStatus'
  Int ->
  -- | 'cdrrsDirectoryARN'
  Text ->
  -- | 'cdrrsName'
  Text ->
  -- | 'cdrrsObjectIdentifier'
  Text ->
  -- | 'cdrrsAppliedSchemaARN'
  Text ->
  CreateDirectoryResponse
createDirectoryResponse
  pResponseStatus_
  pDirectoryARN_
  pName_
  pObjectIdentifier_
  pAppliedSchemaARN_ =
    CreateDirectoryResponse'
      { _cdrrsResponseStatus =
          pResponseStatus_,
        _cdrrsDirectoryARN = pDirectoryARN_,
        _cdrrsName = pName_,
        _cdrrsObjectIdentifier = pObjectIdentifier_,
        _cdrrsAppliedSchemaARN = pAppliedSchemaARN_
      }

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDirectoryResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

-- | The ARN that is associated with the 'Directory' . For more information, see 'arns' .
cdrrsDirectoryARN :: Lens' CreateDirectoryResponse Text
cdrrsDirectoryARN = lens _cdrrsDirectoryARN (\s a -> s {_cdrrsDirectoryARN = a})

-- | The name of the 'Directory' .
cdrrsName :: Lens' CreateDirectoryResponse Text
cdrrsName = lens _cdrrsName (\s a -> s {_cdrrsName = a})

-- | The root object node of the created directory.
cdrrsObjectIdentifier :: Lens' CreateDirectoryResponse Text
cdrrsObjectIdentifier = lens _cdrrsObjectIdentifier (\s a -> s {_cdrrsObjectIdentifier = a})

-- | The ARN of the published schema in the 'Directory' . Once a published schema is copied into the directory, it has its own ARN, which is referred to applied schema ARN. For more information, see 'arns' .
cdrrsAppliedSchemaARN :: Lens' CreateDirectoryResponse Text
cdrrsAppliedSchemaARN = lens _cdrrsAppliedSchemaARN (\s a -> s {_cdrrsAppliedSchemaARN = a})

instance NFData CreateDirectoryResponse
