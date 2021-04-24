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
-- Module      : Network.AWS.SageMaker.UpdateModelPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a versioned model.
module Network.AWS.SageMaker.UpdateModelPackage
  ( -- * Creating a Request
    updateModelPackage,
    UpdateModelPackage,

    -- * Request Lenses
    umpApprovalDescription,
    umpModelPackageARN,
    umpModelApprovalStatus,

    -- * Destructuring the Response
    updateModelPackageResponse,
    UpdateModelPackageResponse,

    -- * Response Lenses
    umprrsResponseStatus,
    umprrsModelPackageARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateModelPackage' smart constructor.
data UpdateModelPackage = UpdateModelPackage'
  { _umpApprovalDescription ::
      !(Maybe Text),
    _umpModelPackageARN :: !Text,
    _umpModelApprovalStatus ::
      !ModelApprovalStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateModelPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umpApprovalDescription' - A description for the approval status of the model.
--
-- * 'umpModelPackageARN' - The Amazon Resource Name (ARN) of the model.
--
-- * 'umpModelApprovalStatus' - The approval status of the model.
updateModelPackage ::
  -- | 'umpModelPackageARN'
  Text ->
  -- | 'umpModelApprovalStatus'
  ModelApprovalStatus ->
  UpdateModelPackage
updateModelPackage
  pModelPackageARN_
  pModelApprovalStatus_ =
    UpdateModelPackage'
      { _umpApprovalDescription =
          Nothing,
        _umpModelPackageARN = pModelPackageARN_,
        _umpModelApprovalStatus = pModelApprovalStatus_
      }

-- | A description for the approval status of the model.
umpApprovalDescription :: Lens' UpdateModelPackage (Maybe Text)
umpApprovalDescription = lens _umpApprovalDescription (\s a -> s {_umpApprovalDescription = a})

-- | The Amazon Resource Name (ARN) of the model.
umpModelPackageARN :: Lens' UpdateModelPackage Text
umpModelPackageARN = lens _umpModelPackageARN (\s a -> s {_umpModelPackageARN = a})

-- | The approval status of the model.
umpModelApprovalStatus :: Lens' UpdateModelPackage ModelApprovalStatus
umpModelApprovalStatus = lens _umpModelApprovalStatus (\s a -> s {_umpModelApprovalStatus = a})

instance AWSRequest UpdateModelPackage where
  type
    Rs UpdateModelPackage =
      UpdateModelPackageResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateModelPackageResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "ModelPackageArn")
      )

instance Hashable UpdateModelPackage

instance NFData UpdateModelPackage

instance ToHeaders UpdateModelPackage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateModelPackage" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateModelPackage where
  toJSON UpdateModelPackage' {..} =
    object
      ( catMaybes
          [ ("ApprovalDescription" .=)
              <$> _umpApprovalDescription,
            Just ("ModelPackageArn" .= _umpModelPackageARN),
            Just
              ("ModelApprovalStatus" .= _umpModelApprovalStatus)
          ]
      )

instance ToPath UpdateModelPackage where
  toPath = const "/"

instance ToQuery UpdateModelPackage where
  toQuery = const mempty

-- | /See:/ 'updateModelPackageResponse' smart constructor.
data UpdateModelPackageResponse = UpdateModelPackageResponse'
  { _umprrsResponseStatus ::
      !Int,
    _umprrsModelPackageARN ::
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

-- | Creates a value of 'UpdateModelPackageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umprrsResponseStatus' - -- | The response status code.
--
-- * 'umprrsModelPackageARN' - The Amazon Resource Name (ARN) of the model.
updateModelPackageResponse ::
  -- | 'umprrsResponseStatus'
  Int ->
  -- | 'umprrsModelPackageARN'
  Text ->
  UpdateModelPackageResponse
updateModelPackageResponse
  pResponseStatus_
  pModelPackageARN_ =
    UpdateModelPackageResponse'
      { _umprrsResponseStatus =
          pResponseStatus_,
        _umprrsModelPackageARN = pModelPackageARN_
      }

-- | -- | The response status code.
umprrsResponseStatus :: Lens' UpdateModelPackageResponse Int
umprrsResponseStatus = lens _umprrsResponseStatus (\s a -> s {_umprrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the model.
umprrsModelPackageARN :: Lens' UpdateModelPackageResponse Text
umprrsModelPackageARN = lens _umprrsModelPackageARN (\s a -> s {_umprrsModelPackageARN = a})

instance NFData UpdateModelPackageResponse
