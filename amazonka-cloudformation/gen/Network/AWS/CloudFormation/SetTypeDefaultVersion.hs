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
-- Module      : Network.AWS.CloudFormation.SetTypeDefaultVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Specify the default version of an extension. The default version of an extension will be used in CloudFormation operations.
module Network.AWS.CloudFormation.SetTypeDefaultVersion
  ( -- * Creating a Request
    setTypeDefaultVersion,
    SetTypeDefaultVersion,

    -- * Request Lenses
    stdvTypeName,
    stdvARN,
    stdvVersionId,
    stdvType,

    -- * Destructuring the Response
    setTypeDefaultVersionResponse,
    SetTypeDefaultVersionResponse,

    -- * Response Lenses
    stdvrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setTypeDefaultVersion' smart constructor.
data SetTypeDefaultVersion = SetTypeDefaultVersion'
  { _stdvTypeName ::
      !(Maybe Text),
    _stdvARN :: !(Maybe Text),
    _stdvVersionId ::
      !(Maybe Text),
    _stdvType ::
      !(Maybe RegistryType)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SetTypeDefaultVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stdvTypeName' - The name of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'stdvARN' - The Amazon Resource Name (ARN) of the extension for which you want version summary information. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'stdvVersionId' - The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.
--
-- * 'stdvType' - The kind of extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
setTypeDefaultVersion ::
  SetTypeDefaultVersion
setTypeDefaultVersion =
  SetTypeDefaultVersion'
    { _stdvTypeName = Nothing,
      _stdvARN = Nothing,
      _stdvVersionId = Nothing,
      _stdvType = Nothing
    }

-- | The name of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
stdvTypeName :: Lens' SetTypeDefaultVersion (Maybe Text)
stdvTypeName = lens _stdvTypeName (\s a -> s {_stdvTypeName = a})

-- | The Amazon Resource Name (ARN) of the extension for which you want version summary information. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
stdvARN :: Lens' SetTypeDefaultVersion (Maybe Text)
stdvARN = lens _stdvARN (\s a -> s {_stdvARN = a})

-- | The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.
stdvVersionId :: Lens' SetTypeDefaultVersion (Maybe Text)
stdvVersionId = lens _stdvVersionId (\s a -> s {_stdvVersionId = a})

-- | The kind of extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
stdvType :: Lens' SetTypeDefaultVersion (Maybe RegistryType)
stdvType = lens _stdvType (\s a -> s {_stdvType = a})

instance AWSRequest SetTypeDefaultVersion where
  type
    Rs SetTypeDefaultVersion =
      SetTypeDefaultVersionResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "SetTypeDefaultVersionResult"
      ( \s h x ->
          SetTypeDefaultVersionResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable SetTypeDefaultVersion

instance NFData SetTypeDefaultVersion

instance ToHeaders SetTypeDefaultVersion where
  toHeaders = const mempty

instance ToPath SetTypeDefaultVersion where
  toPath = const "/"

instance ToQuery SetTypeDefaultVersion where
  toQuery SetTypeDefaultVersion' {..} =
    mconcat
      [ "Action" =: ("SetTypeDefaultVersion" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "TypeName" =: _stdvTypeName,
        "Arn" =: _stdvARN,
        "VersionId" =: _stdvVersionId,
        "Type" =: _stdvType
      ]

-- | /See:/ 'setTypeDefaultVersionResponse' smart constructor.
newtype SetTypeDefaultVersionResponse = SetTypeDefaultVersionResponse'
  { _stdvrrsResponseStatus ::
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

-- | Creates a value of 'SetTypeDefaultVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stdvrrsResponseStatus' - -- | The response status code.
setTypeDefaultVersionResponse ::
  -- | 'stdvrrsResponseStatus'
  Int ->
  SetTypeDefaultVersionResponse
setTypeDefaultVersionResponse pResponseStatus_ =
  SetTypeDefaultVersionResponse'
    { _stdvrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
stdvrrsResponseStatus :: Lens' SetTypeDefaultVersionResponse Int
stdvrrsResponseStatus = lens _stdvrrsResponseStatus (\s a -> s {_stdvrrsResponseStatus = a})

instance NFData SetTypeDefaultVersionResponse
