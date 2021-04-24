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
-- Module      : Network.AWS.CloudHSM.DeleteHSM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
--
-- Deletes an HSM. After completion, this operation cannot be undone and your key material cannot be recovered.
module Network.AWS.CloudHSM.DeleteHSM
  ( -- * Creating a Request
    deleteHSM,
    DeleteHSM,

    -- * Request Lenses
    dhHSMARN,

    -- * Destructuring the Response
    deleteHSMResponse,
    DeleteHSMResponse,

    -- * Response Lenses
    dhsmrrsResponseStatus,
    dhsmrrsStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'DeleteHsm' operation.
--
--
--
-- /See:/ 'deleteHSM' smart constructor.
newtype DeleteHSM = DeleteHSM' {_dhHSMARN :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteHSM' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhHSMARN' - The ARN of the HSM to delete.
deleteHSM ::
  -- | 'dhHSMARN'
  Text ->
  DeleteHSM
deleteHSM pHSMARN_ = DeleteHSM' {_dhHSMARN = pHSMARN_}

-- | The ARN of the HSM to delete.
dhHSMARN :: Lens' DeleteHSM Text
dhHSMARN = lens _dhHSMARN (\s a -> s {_dhHSMARN = a})

instance AWSRequest DeleteHSM where
  type Rs DeleteHSM = DeleteHSMResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          DeleteHSMResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "Status")
      )

instance Hashable DeleteHSM

instance NFData DeleteHSM

instance ToHeaders DeleteHSM where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CloudHsmFrontendService.DeleteHsm" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteHSM where
  toJSON DeleteHSM' {..} =
    object (catMaybes [Just ("HsmArn" .= _dhHSMARN)])

instance ToPath DeleteHSM where
  toPath = const "/"

instance ToQuery DeleteHSM where
  toQuery = const mempty

-- | Contains the output of the 'DeleteHsm' operation.
--
--
--
-- /See:/ 'deleteHSMResponse' smart constructor.
data DeleteHSMResponse = DeleteHSMResponse'
  { _dhsmrrsResponseStatus ::
      !Int,
    _dhsmrrsStatus :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteHSMResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhsmrrsResponseStatus' - -- | The response status code.
--
-- * 'dhsmrrsStatus' - The status of the operation.
deleteHSMResponse ::
  -- | 'dhsmrrsResponseStatus'
  Int ->
  -- | 'dhsmrrsStatus'
  Text ->
  DeleteHSMResponse
deleteHSMResponse pResponseStatus_ pStatus_ =
  DeleteHSMResponse'
    { _dhsmrrsResponseStatus =
        pResponseStatus_,
      _dhsmrrsStatus = pStatus_
    }

-- | -- | The response status code.
dhsmrrsResponseStatus :: Lens' DeleteHSMResponse Int
dhsmrrsResponseStatus = lens _dhsmrrsResponseStatus (\s a -> s {_dhsmrrsResponseStatus = a})

-- | The status of the operation.
dhsmrrsStatus :: Lens' DeleteHSMResponse Text
dhsmrrsStatus = lens _dhsmrrsStatus (\s a -> s {_dhsmrrsStatus = a})

instance NFData DeleteHSMResponse
