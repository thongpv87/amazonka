{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.StopContactRecording
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- When a contact is being recorded, this API stops recording the call. StopContactRecording is a one-time action. If you use StopContactRecording to stop recording an ongoing call, you can't use StartContactRecording to restart it. For scenarios where the recording has started and you want to suspend it for sensitive information (for example, to collect a credit card number), and then restart it, use SuspendContactRecording and ResumeContactRecording.
--
-- Only voice recordings are supported at this time.
module Network.AWS.Connect.StopContactRecording
    (
    -- * Creating a request
      StopContactRecording (..)
    , mkStopContactRecording
    -- ** Request lenses
    , scrfInstanceId
    , scrfContactId
    , scrfInitialContactId

    -- * Destructuring the response
    , StopContactRecordingResponse (..)
    , mkStopContactRecordingResponse
    -- ** Response lenses
    , scrrrsResponseStatus
    ) where

import qualified Network.AWS.Connect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStopContactRecording' smart constructor.
data StopContactRecording = StopContactRecording'
  { instanceId :: Types.InstanceId
    -- ^ The identifier of the Amazon Connect instance.
  , contactId :: Types.ContactId
    -- ^ The identifier of the contact.
  , initialContactId :: Types.InitialContactId
    -- ^ The identifier of the contact. This is the identifier of the contact associated with the first interaction with the contact center.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StopContactRecording' value with any optional fields omitted.
mkStopContactRecording
    :: Types.InstanceId -- ^ 'instanceId'
    -> Types.ContactId -- ^ 'contactId'
    -> Types.InitialContactId -- ^ 'initialContactId'
    -> StopContactRecording
mkStopContactRecording instanceId contactId initialContactId
  = StopContactRecording'{instanceId, contactId, initialContactId}

-- | The identifier of the Amazon Connect instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrfInstanceId :: Lens.Lens' StopContactRecording Types.InstanceId
scrfInstanceId = Lens.field @"instanceId"
{-# INLINEABLE scrfInstanceId #-}
{-# DEPRECATED instanceId "Use generic-lens or generic-optics with 'instanceId' instead"  #-}

-- | The identifier of the contact.
--
-- /Note:/ Consider using 'contactId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrfContactId :: Lens.Lens' StopContactRecording Types.ContactId
scrfContactId = Lens.field @"contactId"
{-# INLINEABLE scrfContactId #-}
{-# DEPRECATED contactId "Use generic-lens or generic-optics with 'contactId' instead"  #-}

-- | The identifier of the contact. This is the identifier of the contact associated with the first interaction with the contact center.
--
-- /Note:/ Consider using 'initialContactId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrfInitialContactId :: Lens.Lens' StopContactRecording Types.InitialContactId
scrfInitialContactId = Lens.field @"initialContactId"
{-# INLINEABLE scrfInitialContactId #-}
{-# DEPRECATED initialContactId "Use generic-lens or generic-optics with 'initialContactId' instead"  #-}

instance Core.ToQuery StopContactRecording where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders StopContactRecording where
        toHeaders StopContactRecording{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON StopContactRecording where
        toJSON StopContactRecording{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("InstanceId" Core..= instanceId),
                  Core.Just ("ContactId" Core..= contactId),
                  Core.Just ("InitialContactId" Core..= initialContactId)])

instance Core.AWSRequest StopContactRecording where
        type Rs StopContactRecording = StopContactRecordingResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST,
                         Core._rqPath = "/contact/stop-recording",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 StopContactRecordingResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkStopContactRecordingResponse' smart constructor.
newtype StopContactRecordingResponse = StopContactRecordingResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopContactRecordingResponse' value with any optional fields omitted.
mkStopContactRecordingResponse
    :: Core.Int -- ^ 'responseStatus'
    -> StopContactRecordingResponse
mkStopContactRecordingResponse responseStatus
  = StopContactRecordingResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrrrsResponseStatus :: Lens.Lens' StopContactRecordingResponse Core.Int
scrrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE scrrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
