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
-- Module      : Network.AWS.SageMaker.CreateModelPackageGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a model group. A model group contains a group of model versions.
module Network.AWS.SageMaker.CreateModelPackageGroup
  ( -- * Creating a Request
    createModelPackageGroup,
    CreateModelPackageGroup,

    -- * Request Lenses
    cmpgModelPackageGroupDescription,
    cmpgTags,
    cmpgModelPackageGroupName,

    -- * Destructuring the Response
    createModelPackageGroupResponse,
    CreateModelPackageGroupResponse,

    -- * Response Lenses
    cmpgrrsResponseStatus,
    cmpgrrsModelPackageGroupARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createModelPackageGroup' smart constructor.
data CreateModelPackageGroup = CreateModelPackageGroup'
  { _cmpgModelPackageGroupDescription ::
      !(Maybe Text),
    _cmpgTags ::
      !(Maybe [Tag]),
    _cmpgModelPackageGroupName ::
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

-- | Creates a value of 'CreateModelPackageGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmpgModelPackageGroupDescription' - A description for the model group.
--
-- * 'cmpgTags' - A list of key value pairs associated with the model group. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
--
-- * 'cmpgModelPackageGroupName' - The name of the model group.
createModelPackageGroup ::
  -- | 'cmpgModelPackageGroupName'
  Text ->
  CreateModelPackageGroup
createModelPackageGroup pModelPackageGroupName_ =
  CreateModelPackageGroup'
    { _cmpgModelPackageGroupDescription =
        Nothing,
      _cmpgTags = Nothing,
      _cmpgModelPackageGroupName =
        pModelPackageGroupName_
    }

-- | A description for the model group.
cmpgModelPackageGroupDescription :: Lens' CreateModelPackageGroup (Maybe Text)
cmpgModelPackageGroupDescription = lens _cmpgModelPackageGroupDescription (\s a -> s {_cmpgModelPackageGroupDescription = a})

-- | A list of key value pairs associated with the model group. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
cmpgTags :: Lens' CreateModelPackageGroup [Tag]
cmpgTags = lens _cmpgTags (\s a -> s {_cmpgTags = a}) . _Default . _Coerce

-- | The name of the model group.
cmpgModelPackageGroupName :: Lens' CreateModelPackageGroup Text
cmpgModelPackageGroupName = lens _cmpgModelPackageGroupName (\s a -> s {_cmpgModelPackageGroupName = a})

instance AWSRequest CreateModelPackageGroup where
  type
    Rs CreateModelPackageGroup =
      CreateModelPackageGroupResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateModelPackageGroupResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "ModelPackageGroupArn")
      )

instance Hashable CreateModelPackageGroup

instance NFData CreateModelPackageGroup

instance ToHeaders CreateModelPackageGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateModelPackageGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateModelPackageGroup where
  toJSON CreateModelPackageGroup' {..} =
    object
      ( catMaybes
          [ ("ModelPackageGroupDescription" .=)
              <$> _cmpgModelPackageGroupDescription,
            ("Tags" .=) <$> _cmpgTags,
            Just
              ( "ModelPackageGroupName"
                  .= _cmpgModelPackageGroupName
              )
          ]
      )

instance ToPath CreateModelPackageGroup where
  toPath = const "/"

instance ToQuery CreateModelPackageGroup where
  toQuery = const mempty

-- | /See:/ 'createModelPackageGroupResponse' smart constructor.
data CreateModelPackageGroupResponse = CreateModelPackageGroupResponse'
  { _cmpgrrsResponseStatus ::
      !Int,
    _cmpgrrsModelPackageGroupARN ::
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

-- | Creates a value of 'CreateModelPackageGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmpgrrsResponseStatus' - -- | The response status code.
--
-- * 'cmpgrrsModelPackageGroupARN' - The Amazon Resource Name (ARN) of the model group.
createModelPackageGroupResponse ::
  -- | 'cmpgrrsResponseStatus'
  Int ->
  -- | 'cmpgrrsModelPackageGroupARN'
  Text ->
  CreateModelPackageGroupResponse
createModelPackageGroupResponse
  pResponseStatus_
  pModelPackageGroupARN_ =
    CreateModelPackageGroupResponse'
      { _cmpgrrsResponseStatus =
          pResponseStatus_,
        _cmpgrrsModelPackageGroupARN =
          pModelPackageGroupARN_
      }

-- | -- | The response status code.
cmpgrrsResponseStatus :: Lens' CreateModelPackageGroupResponse Int
cmpgrrsResponseStatus = lens _cmpgrrsResponseStatus (\s a -> s {_cmpgrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the model group.
cmpgrrsModelPackageGroupARN :: Lens' CreateModelPackageGroupResponse Text
cmpgrrsModelPackageGroupARN = lens _cmpgrrsModelPackageGroupARN (\s a -> s {_cmpgrrsModelPackageGroupARN = a})

instance NFData CreateModelPackageGroupResponse
