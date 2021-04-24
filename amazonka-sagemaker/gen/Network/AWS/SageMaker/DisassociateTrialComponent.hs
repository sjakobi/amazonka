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
-- Module      : Network.AWS.SageMaker.DisassociateTrialComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a trial component from a trial. This doesn't effect other trials the component is associated with. Before you can delete a component, you must disassociate the component from all trials it is associated with. To associate a trial component with a trial, call the 'AssociateTrialComponent' API.
--
--
-- To get a list of the trials a component is associated with, use the 'Search' API. Specify @ExperimentTrialComponent@ for the @Resource@ parameter. The list appears in the response under @Results.TrialComponent.Parents@ .
module Network.AWS.SageMaker.DisassociateTrialComponent
  ( -- * Creating a Request
    disassociateTrialComponent,
    DisassociateTrialComponent,

    -- * Request Lenses
    dtcTrialComponentName,
    dtcTrialName,

    -- * Destructuring the Response
    disassociateTrialComponentResponse,
    DisassociateTrialComponentResponse,

    -- * Response Lenses
    dtcrrsTrialARN,
    dtcrrsTrialComponentARN,
    dtcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'disassociateTrialComponent' smart constructor.
data DisassociateTrialComponent = DisassociateTrialComponent'
  { _dtcTrialComponentName ::
      !Text,
    _dtcTrialName ::
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

-- | Creates a value of 'DisassociateTrialComponent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtcTrialComponentName' - The name of the component to disassociate from the trial.
--
-- * 'dtcTrialName' - The name of the trial to disassociate from.
disassociateTrialComponent ::
  -- | 'dtcTrialComponentName'
  Text ->
  -- | 'dtcTrialName'
  Text ->
  DisassociateTrialComponent
disassociateTrialComponent
  pTrialComponentName_
  pTrialName_ =
    DisassociateTrialComponent'
      { _dtcTrialComponentName =
          pTrialComponentName_,
        _dtcTrialName = pTrialName_
      }

-- | The name of the component to disassociate from the trial.
dtcTrialComponentName :: Lens' DisassociateTrialComponent Text
dtcTrialComponentName = lens _dtcTrialComponentName (\s a -> s {_dtcTrialComponentName = a})

-- | The name of the trial to disassociate from.
dtcTrialName :: Lens' DisassociateTrialComponent Text
dtcTrialName = lens _dtcTrialName (\s a -> s {_dtcTrialName = a})

instance AWSRequest DisassociateTrialComponent where
  type
    Rs DisassociateTrialComponent =
      DisassociateTrialComponentResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DisassociateTrialComponentResponse'
            <$> (x .?> "TrialArn")
            <*> (x .?> "TrialComponentArn")
            <*> (pure (fromEnum s))
      )

instance Hashable DisassociateTrialComponent

instance NFData DisassociateTrialComponent

instance ToHeaders DisassociateTrialComponent where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DisassociateTrialComponent" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisassociateTrialComponent where
  toJSON DisassociateTrialComponent' {..} =
    object
      ( catMaybes
          [ Just
              ("TrialComponentName" .= _dtcTrialComponentName),
            Just ("TrialName" .= _dtcTrialName)
          ]
      )

instance ToPath DisassociateTrialComponent where
  toPath = const "/"

instance ToQuery DisassociateTrialComponent where
  toQuery = const mempty

-- | /See:/ 'disassociateTrialComponentResponse' smart constructor.
data DisassociateTrialComponentResponse = DisassociateTrialComponentResponse'
  { _dtcrrsTrialARN ::
      !( Maybe
           Text
       ),
    _dtcrrsTrialComponentARN ::
      !( Maybe
           Text
       ),
    _dtcrrsResponseStatus ::
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

-- | Creates a value of 'DisassociateTrialComponentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtcrrsTrialARN' - The Amazon Resource Name (ARN) of the trial.
--
-- * 'dtcrrsTrialComponentARN' - The ARN of the trial component.
--
-- * 'dtcrrsResponseStatus' - -- | The response status code.
disassociateTrialComponentResponse ::
  -- | 'dtcrrsResponseStatus'
  Int ->
  DisassociateTrialComponentResponse
disassociateTrialComponentResponse pResponseStatus_ =
  DisassociateTrialComponentResponse'
    { _dtcrrsTrialARN =
        Nothing,
      _dtcrrsTrialComponentARN = Nothing,
      _dtcrrsResponseStatus =
        pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the trial.
dtcrrsTrialARN :: Lens' DisassociateTrialComponentResponse (Maybe Text)
dtcrrsTrialARN = lens _dtcrrsTrialARN (\s a -> s {_dtcrrsTrialARN = a})

-- | The ARN of the trial component.
dtcrrsTrialComponentARN :: Lens' DisassociateTrialComponentResponse (Maybe Text)
dtcrrsTrialComponentARN = lens _dtcrrsTrialComponentARN (\s a -> s {_dtcrrsTrialComponentARN = a})

-- | -- | The response status code.
dtcrrsResponseStatus :: Lens' DisassociateTrialComponentResponse Int
dtcrrsResponseStatus = lens _dtcrrsResponseStatus (\s a -> s {_dtcrrsResponseStatus = a})

instance NFData DisassociateTrialComponentResponse
