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
-- Module      : Network.AWS.CloudFormation.DeregisterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks an extension or extension version as @DEPRECATED@ in the CloudFormation registry, removing it from active use. Deprecated extensions or extension versions cannot be used in CloudFormation operations.
--
--
-- To deregister an entire extension, you must individually deregister all active versions of that extension. If an extension has only a single active version, deregistering that version results in the extension itself being deregistered and marked as deprecated in the registry.
--
-- You cannot deregister the default version of an extension if there are other active version of that extension. If you do deregister the default version of an extension, the textensionype itself is deregistered as well and marked as deprecated.
--
-- To view the deprecation status of an extension or extension version, use <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html DescribeType> .
module Network.AWS.CloudFormation.DeregisterType
  ( -- * Creating a Request
    deregisterType,
    DeregisterType,

    -- * Request Lenses
    dtTypeName,
    dtARN,
    dtVersionId,
    dtType,

    -- * Destructuring the Response
    deregisterTypeResponse,
    DeregisterTypeResponse,

    -- * Response Lenses
    derrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deregisterType' smart constructor.
data DeregisterType = DeregisterType'
  { _dtTypeName ::
      !(Maybe Text),
    _dtARN :: !(Maybe Text),
    _dtVersionId :: !(Maybe Text),
    _dtType :: !(Maybe RegistryType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeregisterType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtTypeName' - The name of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'dtARN' - The Amazon Resource Name (ARN) of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'dtVersionId' - The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.
--
-- * 'dtType' - The kind of extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
deregisterType ::
  DeregisterType
deregisterType =
  DeregisterType'
    { _dtTypeName = Nothing,
      _dtARN = Nothing,
      _dtVersionId = Nothing,
      _dtType = Nothing
    }

-- | The name of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
dtTypeName :: Lens' DeregisterType (Maybe Text)
dtTypeName = lens _dtTypeName (\s a -> s {_dtTypeName = a})

-- | The Amazon Resource Name (ARN) of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
dtARN :: Lens' DeregisterType (Maybe Text)
dtARN = lens _dtARN (\s a -> s {_dtARN = a})

-- | The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.
dtVersionId :: Lens' DeregisterType (Maybe Text)
dtVersionId = lens _dtVersionId (\s a -> s {_dtVersionId = a})

-- | The kind of extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
dtType :: Lens' DeregisterType (Maybe RegistryType)
dtType = lens _dtType (\s a -> s {_dtType = a})

instance AWSRequest DeregisterType where
  type Rs DeregisterType = DeregisterTypeResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DeregisterTypeResult"
      ( \s h x ->
          DeregisterTypeResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeregisterType

instance NFData DeregisterType

instance ToHeaders DeregisterType where
  toHeaders = const mempty

instance ToPath DeregisterType where
  toPath = const "/"

instance ToQuery DeregisterType where
  toQuery DeregisterType' {..} =
    mconcat
      [ "Action" =: ("DeregisterType" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "TypeName" =: _dtTypeName,
        "Arn" =: _dtARN,
        "VersionId" =: _dtVersionId,
        "Type" =: _dtType
      ]

-- | /See:/ 'deregisterTypeResponse' smart constructor.
newtype DeregisterTypeResponse = DeregisterTypeResponse'
  { _derrsResponseStatus ::
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

-- | Creates a value of 'DeregisterTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsResponseStatus' - -- | The response status code.
deregisterTypeResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DeregisterTypeResponse
deregisterTypeResponse pResponseStatus_ =
  DeregisterTypeResponse'
    { _derrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
derrsResponseStatus :: Lens' DeregisterTypeResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DeregisterTypeResponse
