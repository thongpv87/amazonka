{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.StopUserImportJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the user import job.
module Network.AWS.CognitoIdentityProvider.StopUserImportJob
    (
    -- * Creating a request
      StopUserImportJob (..)
    , mkStopUserImportJob
    -- ** Request lenses
    , sUserPoolId
    , sJobId

    -- * Destructuring the response
    , StopUserImportJobResponse (..)
    , mkStopUserImportJobResponse
    -- ** Response lenses
    , srsUserImportJob
    , srsResponseStatus
    ) where

import qualified Network.AWS.CognitoIdentityProvider.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to stop the user import job.
--
-- /See:/ 'mkStopUserImportJob' smart constructor.
data StopUserImportJob = StopUserImportJob'
  { userPoolId :: Types.UserPoolId
    -- ^ The user pool ID for the user pool that the users are being imported into.
  , jobId :: Types.JobId
    -- ^ The job ID for the user import job.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StopUserImportJob' value with any optional fields omitted.
mkStopUserImportJob
    :: Types.UserPoolId -- ^ 'userPoolId'
    -> Types.JobId -- ^ 'jobId'
    -> StopUserImportJob
mkStopUserImportJob userPoolId jobId
  = StopUserImportJob'{userPoolId, jobId}

-- | The user pool ID for the user pool that the users are being imported into.
--
-- /Note:/ Consider using 'userPoolId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sUserPoolId :: Lens.Lens' StopUserImportJob Types.UserPoolId
sUserPoolId = Lens.field @"userPoolId"
{-# INLINEABLE sUserPoolId #-}
{-# DEPRECATED userPoolId "Use generic-lens or generic-optics with 'userPoolId' instead"  #-}

-- | The job ID for the user import job.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sJobId :: Lens.Lens' StopUserImportJob Types.JobId
sJobId = Lens.field @"jobId"
{-# INLINEABLE sJobId #-}
{-# DEPRECATED jobId "Use generic-lens or generic-optics with 'jobId' instead"  #-}

instance Core.ToQuery StopUserImportJob where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders StopUserImportJob where
        toHeaders StopUserImportJob{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSCognitoIdentityProviderService.StopUserImportJob")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON StopUserImportJob where
        toJSON StopUserImportJob{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("UserPoolId" Core..= userPoolId),
                  Core.Just ("JobId" Core..= jobId)])

instance Core.AWSRequest StopUserImportJob where
        type Rs StopUserImportJob = StopUserImportJobResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 StopUserImportJobResponse' Core.<$>
                   (x Core..:? "UserImportJob") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Represents the response from the server to the request to stop the user import job.
--
-- /See:/ 'mkStopUserImportJobResponse' smart constructor.
data StopUserImportJobResponse = StopUserImportJobResponse'
  { userImportJob :: Core.Maybe Types.UserImportJobType
    -- ^ The job object that represents the user import job.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'StopUserImportJobResponse' value with any optional fields omitted.
mkStopUserImportJobResponse
    :: Core.Int -- ^ 'responseStatus'
    -> StopUserImportJobResponse
mkStopUserImportJobResponse responseStatus
  = StopUserImportJobResponse'{userImportJob = Core.Nothing,
                               responseStatus}

-- | The job object that represents the user import job.
--
-- /Note:/ Consider using 'userImportJob' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsUserImportJob :: Lens.Lens' StopUserImportJobResponse (Core.Maybe Types.UserImportJobType)
srsUserImportJob = Lens.field @"userImportJob"
{-# INLINEABLE srsUserImportJob #-}
{-# DEPRECATED userImportJob "Use generic-lens or generic-optics with 'userImportJob' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsResponseStatus :: Lens.Lens' StopUserImportJobResponse Core.Int
srsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE srsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
