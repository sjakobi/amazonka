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
-- Module      : Network.AWS.AutoScalingPlans.UpdateScalingPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified scaling plan.
--
--
-- You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
module Network.AWS.AutoScalingPlans.UpdateScalingPlan
  ( -- * Creating a Request
    updateScalingPlan,
    UpdateScalingPlan,

    -- * Request Lenses
    uspApplicationSource,
    uspScalingInstructions,
    uspScalingPlanName,
    uspScalingPlanVersion,

    -- * Destructuring the Response
    updateScalingPlanResponse,
    UpdateScalingPlanResponse,

    -- * Response Lenses
    usprrsResponseStatus,
  )
where

import Network.AWS.AutoScalingPlans.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateScalingPlan' smart constructor.
data UpdateScalingPlan = UpdateScalingPlan'
  { _uspApplicationSource ::
      !(Maybe ApplicationSource),
    _uspScalingInstructions ::
      !(Maybe [ScalingInstruction]),
    _uspScalingPlanName :: !Text,
    _uspScalingPlanVersion :: !Integer
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateScalingPlan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uspApplicationSource' - A CloudFormation stack or set of tags. For more information, see <https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html ApplicationSource> in the /AWS Auto Scaling API Reference/ .
--
-- * 'uspScalingInstructions' - The scaling instructions. For more information, see <https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html ScalingInstruction> in the /AWS Auto Scaling API Reference/ .
--
-- * 'uspScalingPlanName' - The name of the scaling plan.
--
-- * 'uspScalingPlanVersion' - The version number of the scaling plan. The only valid value is @1@ . Currently, you cannot have multiple scaling plan versions.
updateScalingPlan ::
  -- | 'uspScalingPlanName'
  Text ->
  -- | 'uspScalingPlanVersion'
  Integer ->
  UpdateScalingPlan
updateScalingPlan
  pScalingPlanName_
  pScalingPlanVersion_ =
    UpdateScalingPlan'
      { _uspApplicationSource = Nothing,
        _uspScalingInstructions = Nothing,
        _uspScalingPlanName = pScalingPlanName_,
        _uspScalingPlanVersion = pScalingPlanVersion_
      }

-- | A CloudFormation stack or set of tags. For more information, see <https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html ApplicationSource> in the /AWS Auto Scaling API Reference/ .
uspApplicationSource :: Lens' UpdateScalingPlan (Maybe ApplicationSource)
uspApplicationSource = lens _uspApplicationSource (\s a -> s {_uspApplicationSource = a})

-- | The scaling instructions. For more information, see <https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html ScalingInstruction> in the /AWS Auto Scaling API Reference/ .
uspScalingInstructions :: Lens' UpdateScalingPlan [ScalingInstruction]
uspScalingInstructions = lens _uspScalingInstructions (\s a -> s {_uspScalingInstructions = a}) . _Default . _Coerce

-- | The name of the scaling plan.
uspScalingPlanName :: Lens' UpdateScalingPlan Text
uspScalingPlanName = lens _uspScalingPlanName (\s a -> s {_uspScalingPlanName = a})

-- | The version number of the scaling plan. The only valid value is @1@ . Currently, you cannot have multiple scaling plan versions.
uspScalingPlanVersion :: Lens' UpdateScalingPlan Integer
uspScalingPlanVersion = lens _uspScalingPlanVersion (\s a -> s {_uspScalingPlanVersion = a})

instance AWSRequest UpdateScalingPlan where
  type Rs UpdateScalingPlan = UpdateScalingPlanResponse
  request = postJSON autoScalingPlans
  response =
    receiveEmpty
      ( \s h x ->
          UpdateScalingPlanResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateScalingPlan

instance NFData UpdateScalingPlan

instance ToHeaders UpdateScalingPlan where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AnyScaleScalingPlannerFrontendService.UpdateScalingPlan" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateScalingPlan where
  toJSON UpdateScalingPlan' {..} =
    object
      ( catMaybes
          [ ("ApplicationSource" .=) <$> _uspApplicationSource,
            ("ScalingInstructions" .=)
              <$> _uspScalingInstructions,
            Just ("ScalingPlanName" .= _uspScalingPlanName),
            Just
              ("ScalingPlanVersion" .= _uspScalingPlanVersion)
          ]
      )

instance ToPath UpdateScalingPlan where
  toPath = const "/"

instance ToQuery UpdateScalingPlan where
  toQuery = const mempty

-- | /See:/ 'updateScalingPlanResponse' smart constructor.
newtype UpdateScalingPlanResponse = UpdateScalingPlanResponse'
  { _usprrsResponseStatus ::
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

-- | Creates a value of 'UpdateScalingPlanResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usprrsResponseStatus' - -- | The response status code.
updateScalingPlanResponse ::
  -- | 'usprrsResponseStatus'
  Int ->
  UpdateScalingPlanResponse
updateScalingPlanResponse pResponseStatus_ =
  UpdateScalingPlanResponse'
    { _usprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
usprrsResponseStatus :: Lens' UpdateScalingPlanResponse Int
usprrsResponseStatus = lens _usprrsResponseStatus (\s a -> s {_usprrsResponseStatus = a})

instance NFData UpdateScalingPlanResponse
